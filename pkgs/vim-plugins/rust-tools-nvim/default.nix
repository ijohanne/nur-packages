{ pkgs, sources }:
pkgs.vimUtils.buildVimPluginFrom2Nix {
  name = "rust-tools-nvim-master";
  version = "master";
  pname = "rust-tools-nvim";
  src = pkgs.fetchFromGitHub {
    inherit (sources.rust-tools-nvim) owner repo rev sha256;
  };
}
