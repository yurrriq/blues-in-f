self: super: {
  inherit (import ../sources.nix) gridly oll-core;
  inherit (import (import ../sources.nix).niv { pkgs = super; }) niv;
  oll-lib = super.callPackage ../pkgs/oll-lib.nix { };
}
