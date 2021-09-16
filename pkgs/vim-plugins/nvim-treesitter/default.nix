{ pkgs, sources }:
pkgs.vimUtils.buildVimPluginFrom2Nix {
  name = "nvim-treesitter-master";
  pname = "nvim-treesitter";
  version = "master";
  src = pkgs.fetchFromGitHub {
    inherit (sources.nvim-treesitter) owner repo rev sha256;
  };
}
