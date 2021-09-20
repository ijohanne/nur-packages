{ sources, pkgs, ... }:
pkgs.buildGoModule rec {
  name = "prometheus-hue-exporter";
  src = sources.hue_exporter;
  vendorSha256 = "1k67fxaf831pydjfbmhawdm4kpyallqjg5mprf57hfwr8cqrba2g";
  checkFlags = [ "-short" ];
  installPhase = ''
    runHook preInstall
    mkdir -p $out
    install -Dm644 hue_metrics.json $out/share/hue_metrics.json
    dir="$GOPATH/bin"
    [ -e "$dir" ] && cp -r $dir $out
    runHook postInstall
  '';
}
