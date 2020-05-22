{ stdenv, gridly, oll-core, packages ? [ oll-core gridly ] }:

stdenv.mkDerivation {
  pname = "oll-lib";
  version = "20200504";
  dontUnpack = true;
  dontBuild = true;
  buildInputs = packages;
  installPhase = ''
    mkdir -p "$out"
  '' +
  stdenv.lib.concatMapStrings
    (
      pkg: ''
        cp -r ${pkg} $out/${pkg.repo}
      ''
    )
    packages;
}
