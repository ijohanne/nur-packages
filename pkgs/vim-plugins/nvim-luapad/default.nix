{ pkgs, sources }:
pkgs.vimUtils.buildVimPluginFrom2Nix {
  name = "nvim-luapad-master";
  version = "master";
  pname = "nvim-luapad";
  src = pkgs.fetchFromGitHub {
    inherit (sources.nvim-luapad) owner repo rev sha256;
  };
}
