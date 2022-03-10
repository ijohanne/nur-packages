{ sources, pkgs, ... }:
pkgs.buildGoModule rec {
  name = "prometheus-netatmo-exporter";
  src = sources.netatmo-exporter;
  vendorSha256 = "sha256-RNeBPULLEduxnKNVtfYu7BxnFm+O5SFa3PmXXVzYSqo=";
  checkFlags = [ "-short" ];
}
