{ sources, pkgs, ... }:
pkgs.buildGoModule rec {
  name = "prometheus-unpoller-exporter";
  src = sources.unpoller;
  vendorSha256 = "sha256-vdZWmak3NWpYTVSDIXHGJ5CIdAmwFUElc480p0n6daA=";
  checkFlags = [ "-short" ];
  proxyVendor = true;
}
