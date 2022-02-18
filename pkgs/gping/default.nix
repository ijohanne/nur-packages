{ sources, pkg-config, lib, installShellFiles, darwin, stdenv, rustPlatform, fetchFromGitHub, ... }:
rustPlatform.buildRustPackage rec {
  pname = "gping";
  version = "master";
  src =
    fetchFromGitHub { inherit (sources.gping) owner repo rev sha256; };
  cargoSha256 = "sha256-/CYBPZYjVEAUrbtXz+cM7B40UoPV/K+KDdU0wk1MstA=";
  nativeBuildInputs = [ installShellFiles ]
    ++ lib.optionals stdenv.isLinux [ pkg-config ];
  buildInputs = lib.optional stdenv.hostPlatform.isDarwin
    darwin.apple_sdk.frameworks.IOKit;
  doCheck = true;
  meta = with lib; {
    homepage = "https://github.com/orf/gping";
    description =
      "Ping, but with a graph.";
    license = licenses.mit;
  };
}
