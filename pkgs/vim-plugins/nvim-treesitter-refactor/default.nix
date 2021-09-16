{ pkgs, sources }:
pkgs.vimUtils.buildVimPluginFrom2Nix {
  pname = "nvim-treesitter-refactor";
  name = "nvim-treesitter-refactor-master";
  version = "master";
  src = pkgs.fetchFromGitHub {
    inherit (sources.nvim-treesitter-refactor) owner repo rev sha256;
  };
}
