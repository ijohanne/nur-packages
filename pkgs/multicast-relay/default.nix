{ sources, pkgs, stdenv, fetchFromGitHub, ... }:
with pkgs;
stdenv.mkDerivation {
  name = "multicast-relay";
  buildInputs = [
    (python3.withPackages (ps: with ps; [
      netifaces
    ]))
  ];
  src = fetchFromGitHub {
    inherit (sources.multicast-relay) owner repo rev sha256;
  };
  installPhase = ''
    mkdir -p $out/bin
    cp multicast-relay.py $out/bin/multicast-relay
    chmod +x $out/bin/multicast-relay
  '';
}
