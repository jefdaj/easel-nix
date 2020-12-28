let
  sources = import ./nix/sources.nix {};
  pkgs    = import sources.nixpkgs {};
  easel   = pkgs.callPackage ./default.nix {};
in
  easel
