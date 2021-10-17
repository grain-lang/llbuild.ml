let
  pkgs = import <nixpkgs> {};
  symlinkCurses = pkgs.runCommand "symlink-libncurses-so" { buildInputs = [ pkgs.ncurses5 ]; } ''
    mkdir -p $out/lib
    ln -s ${pkgs.ncurses5}/lib/libncurses.so $out/lib/libcurses.so
  '';
  libllbuild = pkgs.stdenv.mkDerivation rec {
    name = "libllbuild";
    version = "0.5.0";

    src = pkgs.fetchFromGitHub {
      owner = "apple";
      repo = "swift-llbuild";
      rev = version;
      sha256 = "0yl44inyj40b6k6263fqgz9dvcnfiwxmc98p9j2angshn6hx70bg";
    };

    nativeBuildInputs = with pkgs; [ cmake clang ninja ];
    buildInputs = with pkgs; [
      sqlite
      ncurses5
      lit
      llvmPackages.llvm-polly
      symlinkCurses
    ];

    configurePhase = ''
      # Expects curses, not ncurses
      mkdir build && cd build
      cmake \
        -G Ninja \
        -DCMAKE_BUILD_TYPE:=Debug \
        -DCMAKE_C_COMPILER:=clang \
        -DCMAKE_CXX_COMPILER:=clang++ \
        ..
    '';

    buildPhase = ''
      ninja libllbuild
    '';

    installPhase = ''
      mkdir -p $out/lib
      cp lib/libllbuild* $out/lib
    '';

    meta = {
      description = "swift-libllbuild";
    };

  };
in pkgs.mkShell {
  buildInputs = with pkgs; [ cmake libllbuild nodePackages.esy ];
}
