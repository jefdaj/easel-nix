{ stdenv, autoreconfHook, python3, perl }:

stdenv.mkDerivation rec {
  name = "easel-${version}";
  version = "0.47";
  src = ./.;
  nativeBuildInputs = [ autoreconfHook ];
  buildInputs = [ python3 perl ];
  doCheck = true;
  postPatch = ''
    patchShebangs --build *
  '';
}
