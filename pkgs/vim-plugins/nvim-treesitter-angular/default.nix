{ pkgs, sources }:
pkgs.vimUtils.buildVimPluginFrom2Nix {
  name = "nvim-treesitter-angular-master";
  version = "master";
  pname = "nvim-treesitter-angular";
  src = pkgs.fetchFromGitHub {
    inherit (sources.nvim-treesitter-angular) owner repo rev sha256;
  };
}
