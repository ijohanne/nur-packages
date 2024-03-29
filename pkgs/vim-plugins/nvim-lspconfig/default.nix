{ pkgs, sources }:
pkgs.vimUtils.buildVimPluginFrom2Nix {
  name = "nvim-lspconfig-master";
  version = "master";
  pname = "nvim-lspconfig";
  src = pkgs.fetchFromGitHub {
    inherit (sources.nvim-lspconfig) owner repo rev sha256;
  };
}
