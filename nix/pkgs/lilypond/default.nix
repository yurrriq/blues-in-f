{ stdenv, makeWrapper, lilypond, oll-lib }:

stdenv.mkDerivation {
  pname = "lilypond";
  inherit (lilypond) version;
  dontUnpack = true;
  dontBuild = true;
  nativeBuildInputs = [ makeWrapper ];
  propagatedBuildInputs = [
    lilypond
    oll-lib
  ];
  installPhase = ''
    makeWrapper ${lilypond}/bin/lilypond $out/bin/lilypond \
      --add-flags "--include=${oll-lib}"
  '';
}
