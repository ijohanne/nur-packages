{ sources, pkgs, ... }:
(import "${sources.composer2nix}/default.nix" {
  inherit pkgs;
  noDev = true;
}).override {
  executable = true;
}
