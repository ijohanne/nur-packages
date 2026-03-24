self:
{ config, lib, pkgs, ... }:
with lib;
let
  cfg = config.services.zot;
  package = self.legacyPackages.${pkgs.system}.zot;
  settingsFormat = pkgs.formats.json { };

  hasUsers = cfg.auth.users != { };
  adminUsers = attrNames (filterAttrs (_: u: u.admin) cfg.auth.users);
  htpasswdPath = "${cfg.dataDir}/htpasswd";

  defaultSettings = {
    distSpecVersion = "1.1.1";
    storage = {
      rootDirectory = cfg.dataDir;
      gc = true;
      gcDelay = "1h";
      gcInterval = "6h";
    };
    http = {
      address = "127.0.0.1";
      port = "8080";
    };
    log.level = "info";
    extensions = {
      search = {
        enable = true;
        cve.updateInterval = "2h";
      };
      ui.enable = true;
      scrub = {
        enable = true;
        interval = "24h";
      };
      metrics = {
        enable = true;
        prometheus.path = "/metrics";
      };
      lint.enable = true;
    };
  };

  repopolicies = mapAttrs (_: repo: {
    inherit (repo) policies defaultPolicy anonymousPolicy;
  }) cfg.accessControl.repositories;

  authSettings = optionalAttrs hasUsers {
    http = {
      auth = {
        htpasswd.path = htpasswdPath;
        failDelay = 5;
      };
      accessControl = {
        repositories = {
          "**" = {
            defaultPolicy = cfg.accessControl.defaultPolicy;
            anonymousPolicy = cfg.accessControl.anonymousPolicy;
          };
        } // repopolicies;
      } // optionalAttrs (adminUsers != [ ]) {
        adminPolicy = {
          users = adminUsers;
          actions = cfg.accessControl.adminActions;
        };
      };
    };
  };

  effectiveSettings = lib.recursiveUpdate (lib.recursiveUpdate defaultSettings authSettings) cfg.settings;
  configFile = settingsFormat.generate "zot-config.json" effectiveSettings;

  generateHtpasswd = let
    userNames = attrNames cfg.auth.users;
    commands = imap0 (i: name:
      let
        u = cfg.auth.users.${name};
        flags = if i == 0 then "-Bci" else "-Bi";
      in
      "${pkgs.apacheHttpd}/bin/htpasswd ${flags} ${escapeShellArg htpasswdPath} ${escapeShellArg name} < ${escapeShellArg (toString u.passwordFile)}"
    ) userNames;
  in
  concatStringsSep "\n" ([ "rm -f ${escapeShellArg htpasswdPath}" ] ++ commands ++ [ "chmod 600 ${escapeShellArg htpasswdPath}" ]);
in
{
  options.services.zot = with types; mkOption {
    type = types.submodule {
      options = {
        enable = mkEnableOption "Zot OCI container registry";
        dataDir = mkOption {
          type = types.str;
          default = "/var/lib/zot";
          description = "Directory for zot storage.";
        };
        settings = mkOption {
          type = settingsFormat.type;
          default = { };
          description = "Zot configuration rendered to JSON, merged over defaults and auth settings.";
        };
        user = mkOption {
          type = types.str;
          default = "zot";
          description = "User to run the service as.";
        };
        group = mkOption {
          type = types.str;
          default = "zot";
          description = "Group to run the service as.";
        };
        auth.users = mkOption {
          type = types.attrsOf (types.submodule {
            options = {
              passwordFile = mkOption {
                type = types.path;
                description = "Path to file containing the plaintext password (sops-compatible).";
              };
              admin = mkOption {
                type = types.bool;
                default = false;
                description = "Whether this user has admin privileges.";
              };
            };
          });
          default = { };
          description = "Declarative htpasswd users. The htpasswd file is generated at service start.";
        };
        accessControl = {
          adminActions = mkOption {
            type = types.listOf types.str;
            default = [ "read" "create" "update" "delete" ];
            description = "Actions allowed for admin users.";
          };
          defaultPolicy = mkOption {
            type = types.listOf types.str;
            default = [ ];
            description = "Actions allowed for any authenticated user. Empty by default (private).";
          };
          anonymousPolicy = mkOption {
            type = types.listOf types.str;
            default = [ ];
            description = "Actions allowed for unauthenticated users. Empty by default (private).";
          };
          repositories = mkOption {
            type = types.attrsOf (types.submodule {
              options = {
                policies = mkOption {
                  type = types.listOf (types.submodule {
                    options = {
                      users = mkOption {
                        type = types.listOf types.str;
                        default = [ ];
                        description = "Users this policy applies to.";
                      };
                      actions = mkOption {
                        type = types.listOf types.str;
                        default = [ ];
                        description = "Actions allowed for matched users.";
                      };
                    };
                  });
                  default = [ ];
                  description = "Per-user/group policy rules.";
                };
                defaultPolicy = mkOption {
                  type = types.listOf types.str;
                  default = [ ];
                  description = "Actions for any authenticated user on this repo pattern.";
                };
                anonymousPolicy = mkOption {
                  type = types.listOf types.str;
                  default = [ ];
                  description = "Actions for unauthenticated users on this repo pattern.";
                };
              };
            });
            default = { };
            description = "Per-repository access control policies. Keys are glob patterns (e.g. \"myorg/**\").";
          };
        };
        nginx = {
          enable = mkEnableOption "nginx reverse proxy for Zot";
          domain = mkOption {
            type = types.str;
            description = "Domain name for the nginx virtual host.";
          };
          forceSSL = mkOption {
            type = types.bool;
            default = true;
            description = "Force SSL for the virtual host.";
          };
          acme = mkOption {
            type = types.bool;
            default = true;
            description = "Enable ACME (Let's Encrypt) for the virtual host.";
          };
          acmeDns01 = mkOption {
            type = types.bool;
            default = false;
            description = "Use DNS-01 challenge instead of HTTP-01. Requires security.acme.defaults.dnsProvider to be configured.";
          };
        };
        enableLocalScraping = mkEnableOption "scraping by local prometheus";
        grafanaDashboard = mkEnableOption "Grafana dashboard provisioning for Zot";
      };
    };
    default = { };
  };

  config = mkIf cfg.enable {
    users.users.${cfg.user} = {
      isSystemUser = true;
      group = cfg.group;
      home = cfg.dataDir;
    };
    users.groups.${cfg.group} = { };

    systemd.tmpfiles.rules = [
      "d ${cfg.dataDir} 0750 ${cfg.user} ${cfg.group} -"
    ];

    systemd.services.zot = {
      description = "Zot OCI Container Registry";
      wantedBy = [ "multi-user.target" ];
      after = [ "network.target" ];
      preStart = optionalString hasUsers generateHtpasswd;
      serviceConfig = {
        Type = "simple";
        ExecStart = "${getBin package}/bin/zot serve ${configFile}";
        Restart = "on-failure";
        User = cfg.user;
        Group = cfg.group;
        LimitNOFILE = 500000;
        PrivateTmp = true;
        ProtectHome = true;
        NoNewPrivileges = true;
      };
    };

    services.prometheus.scrapeConfigs = mkIf cfg.enableLocalScraping [
      {
        job_name = "zot";
        honor_labels = true;
        metrics_path = effectiveSettings.extensions.metrics.prometheus.path or "/metrics";
        static_configs = [{
          targets = [ "${effectiveSettings.http.address}:${effectiveSettings.http.port}" ];
        }];
      }
    ];

    services.grafana.provision.dashboards.settings.providers = mkIf cfg.grafanaDashboard [
      {
        name = "zot";
        options.path = pkgs.runCommand "zot-dashboards" { } ''
          mkdir -p $out
          cp ${./dashboard.json} $out/zot.json
        '';
      }
    ];

    services.nginx.virtualHosts.${cfg.nginx.domain} = mkIf cfg.nginx.enable {
      forceSSL = cfg.nginx.forceSSL;
      enableACME = cfg.nginx.acme;
      acmeRoot = mkIf (cfg.nginx.acme && cfg.nginx.acmeDns01) null;
      locations."/" = {
        proxyPass = "http://${effectiveSettings.http.address}:${effectiveSettings.http.port}/";
        extraConfig = ''
          client_max_body_size 0;
          proxy_buffering off;
          chunked_transfer_encoding on;
        '';
      };
    };
  };
}
