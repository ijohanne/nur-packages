{ pkgs, sources }:
pkgs.vimUtils.buildVimPluginFrom2Nix {
  name = "nvim-lsp-extension-master";
  version = "master";
  pname = "nvim-lsp-extension";
  src = pkgs.fetchFromGitHub {
    inherit (sources.lsp_extensions-nvim) owner repo rev sha256;
  };
}
