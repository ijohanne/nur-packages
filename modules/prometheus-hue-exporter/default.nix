self:
{ config, lib, pkgs, ... }:
with lib;
let
  cfg = config.services.prometheus-hue-exporter;
  name = "hue";
  package = self.legacyPackages.${pkgs.system}.prometheus-hue-exporter;
in
{
  options.services.prometheus-hue-exporter = with types; mkOption {
    type = types.submodule {
      options = {
        enable = mkEnableOption "the prometheus ${name} exporter";
        enableLocalScraping = mkEnableOption "enable scraping by local prometheus";
        port = mkOption {
          type = types.port;
          default = 9773;
          description = ''
            Port to listen on.
          '';
        };
        listenAddress = mkOption {
          type = types.str;
          default = "127.0.0.1";
          description = ''
            Address to listen on.
          '';
        };
        extraFlags = mkOption {
          type = types.listOf types.str;
          default = [ ];
          description = ''
            Extra commandline options to pass to the ${name} exporter.
          '';
        };
        user = mkOption {
          type = types.str;
          default = "${name}-exporter";
          description = ''
            User name under which the ${name} exporter shall be run.
          '';
        };
        group = mkOption {
          type = types.str;
          default = "${name}-exporter";
          description = ''
            Group under which the ${name} exporter shall be run.
          '';
        };
        hueUrl = mkOption {
          type = types.nullOr types.str;
          default = null;
          description = ''
            Default URL of the Hue bridge to monitor
          '';
        };
        hueApiKeyFile = mkOption {
          type = types.path;
          description = ''
            Path to a file containing the Hue API key.
            Create a user as described in the docs at https://developers.meethue.com/develop/get-started-2
          '';
        };
      };
    };
    default = { };
  };
  config = mkIf cfg.enable {
    users.users."${cfg.user}" = {
      description = "Prometheus ${name} exporter service user";
      isSystemUser = true;
      group = "${cfg.group}";
    };
    users.groups."${cfg.group}" = { };

    systemd.services."prometheus-${name}-exporter" =
      let
        wrapper = pkgs.writeShellScript "prometheus-${name}-exporter" ''
          exec ${getBin package}/bin/hue_exporter \
            ${concatStringsSep " " cfg.extraFlags} \
            -listen-address "${cfg.listenAddress}:${toString cfg.port}" \
            -hue-url "${cfg.hueUrl}" \
            -username "$(cat "$CREDENTIALS_DIRECTORY/hue-api-key")" \
            -metrics-file "${package}/share/hue_metrics.json"
        '';
      in
      {
        wantedBy = [ "multi-user.target" ];
        after = [ "network.target" ];
        serviceConfig = {
          Restart = "always";
          PrivateTmp = true;
          WorkingDirectory = "/tmp";
          DynamicUser = false;
          User = cfg.user;
          Group = cfg.group;
          ExecStart = toString wrapper;
          LoadCredential = [
            "hue-api-key:${cfg.hueApiKeyFile}"
          ];
        };
      };

    services.prometheus.scrapeConfigs = mkIf cfg.enableLocalScraping [
      {
        job_name = "${name}";
        honor_labels = true;
        static_configs = [{
          targets = [ "127.0.0.1:${toString cfg.port}" ];
        }];
      }
    ];
  };
}
