{ pkgs, sources }:
pkgs.vimUtils.buildVimPluginFrom2Nix {
  name = "nvim-code-action-menu-master";
  version = "master";
  pname = "nvim-code-action-menu";
  src = pkgs.fetchFromGitHub {
    inherit (sources.nvim-code-action-menu) owner repo rev sha256;
  };
}
