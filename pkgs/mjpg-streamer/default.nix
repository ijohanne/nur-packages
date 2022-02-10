{ pkgs, sources, fetchFromGitHub }:
pkgs.stdenv.mkDerivation rec {
  pname = "mjpg-streamer";
  version = "master";
  src = fetchFromGitHub { inherit (sources.mjpg-streamer) owner repo rev sha256; };
  buildInputs = with pkgs; [ cmake ];
  nativeBuildInputs = with pkgs; [ libjpeg ];
  dontFixCmake = true;
  configurePhase = ''
    ( cd mjpg-streamer-experimental &&
    mkdir _build && cd _build &&
    cmake ../
    )
  '';
  buildPhase = ''
    (cd mjpg-streamer-experimental &&
    make -C _build
    )
  '';
  installPhase = ''
    mkdir -p $out/lib
    mkdir -p $out/bin
    cp mjpg-streamer-experimental/_build/mjpg_streamer $out/bin
    find mjpg-streamer-experimental/_build -name "*.so" -type f -exec cp {} $out/lib \;
  '';
}
