{ pkgs, sources }:
pkgs.vimUtils.buildVimPluginFrom2Nix {
  name = "neovim-treesitter-textobjects-master";
  pname = "neovim-treesitter-textobjects";
  version = "master";
  src = pkgs.fetchFromGitHub {
    inherit (sources.nvim-treesitter-textobjects) owner repo rev sha256;
  };
}
