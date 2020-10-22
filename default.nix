{ stdenv, autoreconfHook, python3 }:

stdenv.mkDerivation rec {
  name = "easel-${version}";
  version = "0.47";
  src = ./.;
  nativeBuildInputs = [ autoreconfHook ];
  buildInputs = [ python3 ];
  doCheck = true;
}
