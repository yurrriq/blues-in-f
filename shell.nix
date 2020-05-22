{ pkgs ? import ./nix }:
pkgs.mkShell {
  buildInputs = with pkgs; (
    [
      cargo
      git
      gnumake
      lilypond-with-improviso
      nixpkgs-fmt
      niv
      shellcheck
      timidity
    ]
  ) ++ (
    with python3Packages; [
      pre-commit
      pywatchman
    ]
  );
  LILYPOND_SHARE_DIR = "${pkgs.lilypond}/share";
}
