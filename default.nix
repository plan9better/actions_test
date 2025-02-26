with import <nixpkgs> {}; stdenv.mkDerivation {
  name = "hello";

  # Source Code
  # See: https://nixos.org/nixpkgs/manual/#ssec-unpack-phase
  src = ./src;

  # Dependencies
  # See: https://nixos.org/nixpkgs/manual/#ssec-stdenv-dependencies
  buildInputs = [ ocaml ];

  # Build Phases
  # See: https://nixos.org/nixpkgs/manual/#sec-stdenv-phases
  configurePhase = ''
  '';
  buildPhase = ''
    ocamlc hello.ml -o hello.out
  '';
  installPhase = ''
    mkdir -p "$out/bin"
    cp ./hello.out "$out/bin/"
  '';
}
