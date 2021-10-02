{ sources, pkgs, buildGoModule, fetchFromGitHub, ... }:
buildGoModule rec {
  pname = "yubikey-touch-detector";
  version = "1.9.3";
  src = fetchFromGitHub {
    inherit (sources.yubikey-touch-detector) owner repo rev sha256;
  };
  vendorSha256 = "0y7rn17vypga8q6ba7vkvmadpxqa8jyl2ph0grg7c541l1g42gii";
  subPackages = [ "." ];
  runVend = true;

  nativeBuildInputs = with pkgs; [ pkg-config ];
  buildInputs = with pkgs; [ libnotify ];

  meta = with pkgs.lib; {
    description = "Detect when your YubiKey is waiting for a touch";
    license = licenses.mit;
    homepage = "https://github.com/maximbaz/yubikey-touch-detector";
  };
}
