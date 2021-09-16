{ sources, pkgs, buildGoModule, fetchFromGitHub, ... }:
buildGoModule rec {
  pname = "yubikey-touch-detector";
  version = "1.9.1";
  src = fetchFromGitHub {
    inherit (sources.yubikey-touch-detector) owner repo rev sha256;
  };
  vendorSha256 = "1j8zj2flahwv1srzj5c3fvis27m2ki8vw1w6zmrg5a71q6m4kwz7";
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
