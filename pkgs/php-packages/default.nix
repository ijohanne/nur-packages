{ pkgs, sources }:
{
  composer2nix = import ./composer2nix { inherit pkgs sources; };
  phpactor = import ./phpactor { inherit pkgs sources; };
}
