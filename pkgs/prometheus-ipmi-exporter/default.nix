{ sources, pkgs, ... }:
pkgs.buildGo116Module rec {
  name = "prometheus-ipmi-exporter";
  src = sources.ipmi_exporter;
  vendorSha256 = "0axsgazbqlss2kyr4xzsb4h4794z2p2vhp1fgfd8xvf63i42n27a";
  proxyVendor = true;
}
