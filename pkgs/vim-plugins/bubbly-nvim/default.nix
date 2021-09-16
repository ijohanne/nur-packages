{ pkgs, sources }:
pkgs.vimUtils.buildVimPluginFrom2Nix {
  name = "bubbly-nvim-master";
  version = "master";
  pname = "bubbly-nvim";
  src = pkgs.fetchFromGitHub {
    inherit (sources.bubbly-nvim) owner repo rev sha256;
  };
}
