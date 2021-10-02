{ pkgs, sources }:
pkgs.vimUtils.buildVimPluginFrom2Nix {
  name = "nvim-lightbulb-master";
  version = "master";
  pname = "nvim-lightbulb";
  src = pkgs.fetchFromGitHub {
    inherit (sources.nvim-lightbulb) owner repo rev sha256;
  };
}
