{ sources, pkgs, ... }:
pkgs.buildGoModule rec {
  name = "prometheus-netatmo-exporter";
  src = sources.netatmo-exporter;
  vendorSha256 = "sha256-9B74JqXDFyq10jscsFplIDrfGRRoshOd1zRBW11F33Y=";
  checkFlags = [ "-short" ];
}
