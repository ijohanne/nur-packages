{ config, lib, pkgs, ... }:
with lib;
let
  cfg = config.services.mjpg-streamer-experimental;
in
{
  options.services.mjpg-streamer-experimental = with types; mkOption {
    type = types.submodule {
      options = {
        enable = mkEnableOption "mjpg-streamer";
        input = mkOption {
          type = types.str;
          default = "uvc";
          description = ''
            Input library to use
          '';
        };
        inputArgs = mkOption {
          type = types.str;
          default = "-d /dev/video0 -r 1920x1080 -f 60";
          description = ''
            Input library arguments
          '';
        };
        output = mkOption {
          type = types.str;
          default = "http";
          description = ''
            Output library to use
          '';
        };
        outputArgs = mkOption {
          type = types.str;
          default = "";
          description = ''
            Output library arguments
          '';
        };
        user = mkOption {
          type = str;
          default = "mjpg-streamer";
          description = ''
            User to run the service under
          '';
        };
        group = mkOption {
          type = str;
          default = "mjpg-streamer";
          description = ''
            Group of user to run the service under
          '';
        };

      };
    };
  };

  config = mkIf cfg.enable {
    users.users."${cfg.user}" = {
      description = "mjpg streamer user";
      isSystemUser = true;
      group = "${cfg.group}";
      extraGroups = [ "video" ];
    };
    users.groups."${cfg.group}" = { };

    systemd.services."mjpg-streamer-experimental" = {
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
        ${getBin pkgs.mjpg-streamer-experimental}/bin/mjpg_streamer \
          -o "output_${cfg.output}.so ${cfg.outputArgs}" \
          -i "input_${cfg.input}.so ${cfg.inputArgs}"
      '';
    };
  };
}
