{ pkgs, sources }:
pkgs.vimUtils.buildVimPluginFrom2Nix {
  name = "nvim-dap-master";
  version = "master";
  pname = "nvim-dap";
  src = pkgs.fetchFromGitHub {
    inherit (sources.nvim-dap) owner repo rev sha256;
  };
}
