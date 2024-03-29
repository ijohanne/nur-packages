{ pkgs, sources, lib, makeRustPlatform, fetchFromGitHub, installShellFiles }:
let
  mozilla = pkgs.callPackage "${sources.nixpkgs-mozilla}/package-set.nix" { };
  rustSpecific = mozilla.rustChannels.stable.rust;
in
(makeRustPlatform {
  cargo = rustSpecific;
  rustc = rustSpecific;
}).buildRustPackage rec {
  pname = "pueue";
  version = "master";
  src = fetchFromGitHub { inherit (sources.pueue) owner repo rev sha256; };

  cargoSha256 = "sha256-nffLZLBzD2WTRqD4KayGlREs2p4oJ0wmdJRR0srWiY4=";

  nativeBuildInputs = [ installShellFiles ];

  doCheck = false;

  postInstall = ''
    # zsh completion generation fails. See: https://github.com/Nukesor/pueue/issues/57
    for shell in bash fish; do
      $out/bin/pueue completions $shell .
      installShellCompletion pueue.$shell
    done
  '';

  meta = with lib; {
    description = "A daemon for managing long running shell commands";
    homepage = "https://github.com/Nukesor/pueue";
    license = licenses.mit;
  };
}
