self: super: {
  inherit (import (import ../sources.nix).nixpkgs-unstable { }) lilypond nixpkgs-fmt;
}
