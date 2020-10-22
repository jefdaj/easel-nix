{ stdenv, autoreconfHook }:

stdenv.mkDerivation rec {
  name = "easel-${version}";
  version = "0.47";
  src = ./.;
  nativeBuildInputs = [ autoreconfHook ];
#   builder = builtins.writeScript "builder.sh" ''
#     autoconf
#     ./configure
#     make
#     make check
#   '';
}
