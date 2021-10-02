{ pkgs, sources }:
pkgs.vimUtils.buildVimPluginFrom2Nix {
  name = "plenary-nvim-master";
  version = "master";
  pname = "plenary-nvim";
  src = pkgs.fetchFromGitHub {
    inherit (sources.plenary-nvim) owner repo rev sha256;
  };
}
