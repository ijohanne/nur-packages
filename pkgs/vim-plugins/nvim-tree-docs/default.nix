{ pkgs, sources }:
pkgs.vimUtils.buildVimPluginFrom2Nix {
  name = "nvim-tree-docs-master";
  version = "master";
  pname = "nvim-tree-docs";
  src = pkgs.fetchFromGitHub {
    inherit (sources.nvim-tree-docs) owner repo rev sha256;
  };
}
