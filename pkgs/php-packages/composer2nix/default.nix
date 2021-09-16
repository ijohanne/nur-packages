{ sources, pkgs, systems ? [ "x86_64-linux" ], ... }:
pkgs.lib.genAttrs systems (system: (import "${sources.composer2nix}/default.nix" {
  inherit pkgs system;
  noDev = true;
}).override {
  executable = true;
})
