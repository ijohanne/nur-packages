{ pkgs, sources }:
pkgs.vimUtils.buildVimPluginFrom2Nix {
  name = "ranger-vim-master";
  version = "master";
  pname = "ranger-vim";
  src = pkgs.fetchFromGitHub {
    inherit (sources.ranger-vim) owner repo rev sha256;
  };
}
