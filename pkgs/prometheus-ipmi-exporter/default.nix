{ sources, pkgs, ... }:
pkgs.buildGo118Module rec {
  name = "prometheus-ipmi-exporter";
  src = sources.ipmi_exporter;
  vendorSha256 = "sha256-ywwrsiL3XIWP44GlRRF3ProX4Gat7jJY1OIoD+v/4sM=";
  proxyVendor = true;
}
