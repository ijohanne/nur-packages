{ pkgs, sources, ... }:
{
  bottom = pkgs.callPackage ./bottom { inherit sources; };
  lfs = pkgs.callPackage ./lfs { inherit sources; };
  pueue = pkgs.callPackage ./pueue { inherit sources; };
  sddmThemes = pkgs.libsForQt5.callPackage ./sddm-themes { inherit sources; };
  yubikey-touch-detector = pkgs.callPackage ./yubikey-touch-detector { inherit sources; };
  lua-language-server = pkgs.callPackage ./lua-language-server { inherit sources; };
  gping = pkgs.callPackage ./gping { inherit sources; };
  fishPlugins = pkgs.recurseIntoAttrs (pkgs.callPackage ./fish-plugins { inherit pkgs sources; });
  vimPlugins = pkgs.recurseIntoAttrs (pkgs.callPackage ./vim-plugins { inherit pkgs sources; });
  neovim-nightly = pkgs.callPackage ./neovim-nightly { inherit pkgs sources; };
  firefoxPlugins = pkgs.recurseIntoAttrs (pkgs.callPackage ./firefox-plugins { });
  firefox-hardened = pkgs.callPackage ./firefox-hardened { inherit pkgs; };
  firefox-hardened-wayland = pkgs.callPackage ./firefox-hardened { inherit pkgs; forceWayland = true; };
  hexokinase = pkgs.callPackage ./hexokinase { inherit pkgs sources; };
  nixpkgs-firefox-addons = pkgs.haskellPackages.callPackage ./firefox-addons-generator { inherit sources; };
  php-packages = pkgs.recurseIntoAttrs (pkgs.callPackage ./php-packages { inherit pkgs sources; });
  prometheus-teamspeak3-exporter = pkgs.callPackage ./prometheus-teamspeak3-exporter { inherit pkgs sources; };
  prometheus-hue-exporter = pkgs.callPackage ./prometheus-hue-exporter { inherit pkgs sources; };
  prometheus-nftables-exporter = pkgs.callPackage ./prometheus-nftables-exporter { inherit pkgs sources; };
  prometheus-unpoller-exporter = pkgs.callPackage ./prometheus-unpoller-exporter { inherit pkgs sources; };
  mjpg-streamer = pkgs.callPackage ./mjpg-streamer { inherit pkgs sources; };
}
