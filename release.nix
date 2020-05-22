{ stdenv, lib, makeFontsConf, lilypond, loglevel ? "info" }:

stdenv.mkDerivation {
  pname = "blues-in-f";
  version = builtins.readFile ./VERSION;
  src = ./src;

  FONTCONFIG_FILE = makeFontsConf { fontDirectories = [ ]; };

  nativeBuildInputs = [
    lilypond
  ];

  dontBuild = true;

  installFlags = [
    "job-count=$${NIX_BUILD_CORES:-1}"
    "loglevel=${loglevel}"
    "prefix=${placeholder "out"}"
  ];

  postInstall = lib.optionalString (loglevel != "debug") ''
    rm -frv $out/*.log
  '';
}
