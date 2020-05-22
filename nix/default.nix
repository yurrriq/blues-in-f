import (import ./sources.nix).nixpkgs {
  overlays = [
    (import ./overlays/unstable.nix)
    (import ./overlays/sources.nix)
    (import ./overlays/lilypond.nix)
  ];
}
