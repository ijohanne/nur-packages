{ sources, lib, installShellFiles, darwin, stdenv, rustPlatform, fetchFromGitHub, pkg-config, ... }:
rustPlatform.buildRustPackage rec {
  pname = "bottom";
  version = "master";
  src =
    fetchFromGitHub { inherit (sources.bottom) owner repo rev sha256; };
  cargoSha256 = "0k90m9ivs69dd8l565kagfmi67hhnq2v0cij50d9r52gh0sdl5nv";
  nativeBuildInputs = [ installShellFiles ]
    ++ lib.optionals stdenv.isLinux [ pkg-config ];
  buildInputs = lib.optional stdenv.hostPlatform.isDarwin
    darwin.apple_sdk.frameworks.IOKit;
  doCheck = false;
  postInstall = ''
    target_dir=$(ls $releaseDir/build/bottom-*/out/btm.bash | head -n1 | xargs dirname)
    installShellCompletion --bash --name btm.bash $target_dir/btm.bash
    installShellCompletion --fish --name btm.fish $target_dir/btm.fish
    installShellCompletion --zsh --name _btm $target_dir/_btm
  '';
  meta = with lib; {
    homepage = "https://github.com/ClementTsang/bottom";
    description =
      "A cross-platform graphical process/system monitor with a customizable interface and a multitude of features. Supports Linux, macOS, and Windows.";
    license = licenses.mit;
  };
}
