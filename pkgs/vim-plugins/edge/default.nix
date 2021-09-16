{ pkgs, sources }:
pkgs.vimUtils.buildVimPluginFrom2Nix {
  name = "edge-master";
  version = "master";
  pname = "edge";
  src = pkgs.fetchFromGitHub {
    inherit (sources.edge) owner repo rev sha256;
  };
}
