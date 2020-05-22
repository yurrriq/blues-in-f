self: super: rec {

  lilypond = super.lilypond // rec {
    with-fonts = fonts: super.callPackage ../pkgs/lilypond/with-fonts.nix {
      inherit fonts;
      inherit lilypond;
    };
    passthru = { inherit with-fonts; };
  };

  lilypond-with-improviso = super.callPackage ../pkgs/lilypond {
    lilypond = lilypond.with-fonts [ "improviso" ];
  };

}
