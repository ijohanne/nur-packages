{ pkgs, sources }:
pkgs.vimUtils.buildVimPluginFrom2Nix {
  name = "vim-signify-master";
  version = "master";
  pname = "vim-signify";
  src = pkgs.fetchFromGitHub {
    inherit (sources.vim-signify) owner repo rev sha256;
  };
}
