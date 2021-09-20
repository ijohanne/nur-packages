{ sources, pkgs, ... }:
pkgs.buildGoModule rec {
  name = "prometheus-teamspeak3-exporter";
  src = sources.ts3exporter;
  vendorSha256 = "15jzxm4yviv1pjhb9zjmy0zccn28qcdwsk1pkx3x8yl0h2hdxpgf";
  checkFlags = [ "-short" ];
}
