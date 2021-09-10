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

  cargoSha256 = "1wj8fz1daa6iy95knmvcvriva4v56778xs4dv5svd8bmcx52x2j8";

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
