{ pkgs, sources }:
pkgs.vimUtils.buildVimPluginFrom2Nix {
  name = "nvim-luadev-master";
  version = "master";
  pname = "nvim-luadev";
  src = pkgs.fetchFromGitHub {
    inherit (sources.nvim-luadev) owner repo rev sha256;
  };
}
