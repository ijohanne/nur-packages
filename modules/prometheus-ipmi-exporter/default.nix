{ config, lib, pkgs, ... }:
with lib;
let
  cfg = config.services.prometheus-ipmi-exporter;
  name = "ipmi";
in
{
  options.services.prometheus-ipmi-exporter = with types; mkOption {
    type = types.submodule {
      options = {
        enable = mkEnableOption "the prometheus ${name} exporter";
        enableLocalScraping = mkEnableOption "enable scraping by local prometheus";
        port = mkOption {
          type = types.port;
          default = 9290;
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
      };
    };
  };
  config = mkIf cfg.enable {
    systemd.services."prometheus-${name}-exporter" = {
      environment = { };
      wantedBy = [ "multi-user.target" ];
      after = [ "network.target" ];
      serviceConfig.Restart = "always";
      serviceConfig.PrivateTmp = true;
      serviceConfig.WorkingDirectory = /tmp;
      serviceConfig.DynamicUser = false;
      serviceConfig.ExecStart = ''
        ${getBin pkgs.prometheus-ipmi-exporter}/bin/ipmi_exporter ${concatStringsSep " " cfg.extraFlags} \
          --freeipmi.path="${pkgs.freeipmi}/bin" \
          --web.listen-address="${cfg.listenAddress}:${toString cfg.port}"
      '';
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
