{ config, lib, pkgs, ... }:
with lib;
let
  cfg = config.services.prometheus-unpoller-exporter;
  name = "unpoller";
  trueOrFalse = v: if v then "true" else "false";
  toOption = n: v: "  ${toString n} = ${v}";
  toConf = n: v:
    if isInt v then (toOption n (toString v))
    else if isBool v then (toOption n (trueOrFalse v))
    else if isString v then (toOption n "\"${v}\"")
    else if isList v then (concatMapStringsSep "\n" (toConf n) v)
    else if isAttrs v then
      (concatStringsSep "\n" (
        [ "[${n}]" ] ++ (
          mapAttrsToList (toConf) v
        )
      ))
    else throw (traceSeq v "services.prometheus-unpoller-exporter.sitesConfig: unexpected type");

  configFile = pkgs.writeText "unpoller.toml" (concatStringsSep "\n" (mapAttrsToList (toConf) cfg.sitesConfig));
in
{
  options.services.prometheus-unpoller-exporter = with types; mkOption {
    type = types.submodule {
      options = {
        enable = mkEnableOption "the prometheus ${name} exporter";
        enableLocalScraping = mkEnableOption "enable scraping by local prometheus";
        port = mkOption {
          type = types.port;
          default = 9130;
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
        unifiUrl = mkOption {
          type = types.str;
          default = "https://127.0.0.1:8443";
          description = ''
            URL of Unifi device to poll
          '';
        };
        unifiUsername = mkOption {
          type = types.str;
          default = "unpoller";
          description = ''
            Username to use when polling
          '';
        };
        unifiPassword = mkOption {
          type = types.str;
          default = "unpoller";
          description = ''
            Password to use when polling
          '';
        };

        sitesConfig = mkOption {
          default = {
            prometheus = {
              disable = false;
              namespace = "unifipoller";
              http_listen = "${cfg.listenAddress}:${toString cfg.port}";
              report_errors = false;
              buffer = 50;
            };
            "unifi.defaults" = {
              url = "${cfg.unifiUrl}";
              user = "${cfg.unifiUsername}";
              pass = "${cfg.unifiPassword}";
              save_sites = true;
              save_ids = false;
              save_events = false;
              save_alarms = false;
              save_dpi = false;
              save_rogue = true;
              verify_ssl = false;
            };
            influxdb = {
              disable = true;
            };
          };
          type = with types; submodule {
            freeformType =
              let
                validSettingsPrimitiveTypes = oneOf [ int str bool float ];
                validSettingsTypes = oneOf [ validSettingsPrimitiveTypes (listOf validSettingsPrimitiveTypes) ];
                settingsType = oneOf [ str (attrsOf validSettingsTypes) ];
              in
              attrsOf (oneOf [ settingsType (listOf settingsType) ])
              // {
                description = ''
                  unpoller configuration type. The format consist of an attribute
                  set of settings. Each settings can be either one value, a list of
                  values or an attribute set. The allowed values are integers,
                  strings, booleans or floats.
                '';
              };
          };
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

    systemd.services."prometheus-${name}-exporter" = {
      environment = { };
      wantedBy = [ "multi-user.target" ];
      after = [ "network.target" ];
      serviceConfig.Restart = "always";
      serviceConfig.PrivateTmp = true;
      serviceConfig.WorkingDirectory = /tmp;
      serviceConfig.DynamicUser = false;
      serviceConfig.User = "${cfg.user}";
      serviceConfig.Group = "${cfg.group}";
      serviceConfig.ExecStart = ''
        ${getBin pkgs.prometheus-unpoller-exporter}/bin/unpoller ${concatStringsSep " " cfg.extraFlags} \
        --config ${configFile}
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
