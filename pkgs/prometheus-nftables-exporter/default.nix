{ sources, pkgs, ... }:
pkgs.buildGoModule rec {
  name = "prometheus-nftables-exporter";
  src = sources.nftables_exporter;
  vendorSha256 = null;
  checkFlags = [ "-short" ];
  doCheck = false;
}
