{ sources, pkgs, darwin, stdenv, rustPlatform, fetchFromGitHub, ... }:
with pkgs;
rustPlatform.buildRustPackage rec {
  pname = "lfs";
  version = "master";
  src = fetchFromGitHub { inherit (sources.lfs) owner repo rev sha256; };
  cargoSha256 = "19rwlk7ddj5jy5ryrzxm0lglf5jc5dhqnn660yc5vqk1l1a863v3";
  buildInputs = lib.optional stdenv.hostPlatform.isDarwin
    darwin.apple_sdk.frameworks.IOKit;

  meta = with lib; {
    homepage = "https://github.com/Canop/lfs";
    description = "A small linux utility listing your filesystems.";
    license = licenses.mit;
  };
}
