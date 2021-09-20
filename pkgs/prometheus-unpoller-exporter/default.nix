{ sources, pkgs, ... }:
pkgs.buildGoModule rec {
  name = "prometheus-unpoller-exporter";
  src = sources.unpoller;
  vendorSha256 = "1m0x9w2h8fs6sv4icm4naymby0jrkjjklg4bw7r7p6418lva3z6c";
  checkFlags = [ "-short" ];
}
