{ sources, pkgs, ... }:
pkgs.buildGoModule rec {
  name = "prometheus-unpoller-exporter";
  src = sources.unpoller;
  vendorSha256 = "sha256-uqpF0By3GIMGwTZuQoovLaitvybImCqUsli/G01v/GA=";
  checkFlags = [ "-short" ];
  deleteVendor = true;
  proxyVendor = true;
}
