{ sources, pkgs, buildGoModule, fetchFromGitHub, ... }:
buildGoModule rec {
  pname = "yubikey-touch-detector";
  version = "1.9.3";
  src = fetchFromGitHub {
    inherit (sources.yubikey-touch-detector) owner repo rev sha256;
  };
  vendorSha256 = "sha256-Vco3ldjpnehZ7JQtWrvKU/Me5LhdGVW1LxvvbueXJw8=";
  subPackages = [ "." ];
  proxyVendor = true;

  nativeBuildInputs = with pkgs; [ pkg-config ];
  buildInputs = with pkgs; [ libnotify ];

  meta = with pkgs.lib; {
    description = "Detect when your YubiKey is waiting for a touch";
    license = licenses.mit;
    homepage = "https://github.com/maximbaz/yubikey-touch-detector";
  };
}
