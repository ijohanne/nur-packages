{ pkgs, sources }:
pkgs.vimUtils.buildVimPluginFrom2Nix {
  name = "nvim-dap-ui-master";
  version = "master";
  pname = "nvim-dap-ui";
  src = pkgs.fetchFromGitHub {
    inherit (sources.nvim-dap-ui) owner repo rev sha256;
  };
}
