{ sources, pkg-config, lib, installShellFiles, darwin, stdenv, rustPlatform, fetchFromGitHub, ... }:
rustPlatform.buildRustPackage rec {
  pname = "gping";
  version = "master";
  src =
    fetchFromGitHub { inherit (sources.gping-ijohanne) owner repo rev sha256; };
  cargoSha256 = "00xrkw3jhr8d76ar3vs1pnck6ras39hp71w3gfgxbwcg7fr27lab";
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
