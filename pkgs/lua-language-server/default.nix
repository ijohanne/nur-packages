{ stdenv
, fetchFromGitHub
, pkg-config
, makeWrapper
, lua52Packages
, ncurses
, ninja
, readline
, zlib
, lib
, sources
}:
with lib;
stdenv.mkDerivation rec {
  pname = "lua-language-server";
  version = "master";

  src = fetchFromGitHub {
    inherit (sources.lua-language-server) owner repo rev;
    sha256 = "sha256-7cvD/q4ZWd3W3g97jKdihSY4pnW4+XlbGnitk33RN40=";
    fetchSubmodules = true;
  };

  buildPhase = ''
    cd 3rd/luamake
    patchShebangs compile/install.sh
    compile/install.sh
    cd ../..
    ./3rd/luamake/luamake rebuild
  '';

  installPhase = ''
    mkdir -p $out/bin
    cp bin/lua-language-server $out/bin
  '';

  nativeBuildInputs = [
    pkg-config
    makeWrapper
    ninja
  ];

  buildInputs = [
    lua52Packages.lua
    ncurses
    readline
    zlib
  ];

  meta = with lib; {
    description = "Lua language server";
    homepage = "https://github.com/sumneko/lua-language-server";
    platforms = with platforms; linux ++ darwin;
  };
}
