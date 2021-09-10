{ sources, pkgs, darwin, stdenv, rustPlatform, fetchFromGitHub, ... }:
with pkgs;
rustPlatform.buildRustPackage rec {
  pname = "lfs";
  version = "master";
  src = fetchFromGitHub { inherit (sources.lfs) owner repo rev sha256; };
  cargoSha256 = "0vxnaa3z4wns1g5pk5h2il70py2446v0qknjww6jr3sbscp33vxx";
  buildInputs = lib.optional stdenv.hostPlatform.isDarwin
    darwin.apple_sdk.frameworks.IOKit;

  meta = with lib; {
    homepage = "https://github.com/Canop/lfs";
    description = "A small linux utility listing your filesystems.";
    license = licenses.mit;
  };
}
