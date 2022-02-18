{ sources, pkgs, darwin, stdenv, rustPlatform, fetchFromGitHub, ... }:
with pkgs;
rustPlatform.buildRustPackage rec {
  pname = "lfs";
  version = "master";
  src = fetchFromGitHub { inherit (sources.lfs) owner repo rev sha256; };
  cargoSha256 = "sha256-22K00ij2O9HpFuLKllzVDRcpMSVvM4AblCy2wcy3pvc=";
  buildInputs = lib.optional stdenv.hostPlatform.isDarwin
    darwin.apple_sdk.frameworks.IOKit;

  meta = with lib; {
    homepage = "https://github.com/Canop/lfs";
    description = "A small linux utility listing your filesystems.";
    license = licenses.mit;
  };
}
