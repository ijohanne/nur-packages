{ pkgs, sources, lib, rustPlatform, fetchFromGitHub, pkg-config, ... }:
rustPlatform.buildRustPackage rec {
  pname = "prometheus-tplink-p110-exporter";
  version = "master";
  src =
    fetchFromGitHub { inherit (sources.prometheus-tplink-p110-exporter) owner repo rev sha256; };
  cargoSha256 = "sha256-Os9+THrbciA3DH2acQVQfpb9Vw/+lOrMH+Z91KBkdqE=";
  nativeBuildInputs = [ pkg-config ];
  buildInputs = with pkgs; [ openssl ];
  doCheck = false;
  meta = with lib; {
    homepage = "https://github.com/ijohanne/prometheus-tplink-p110-exporter";
    description =
      "Prometheus TP-Link P110 Exporter";
    license = licenses.agpl3;
  };
}
