{ pkgs, buildPackages, fetchurl, ... }:

let
  protoc-go-inject-tag = pkgs.buildGoModule rec {
    pname = "protoc-go-inject-tag";
    version = "1.4.0";

    src = pkgs.fetchFromGitHub {
      owner = "favadi";
      repo = "protoc-go-inject-tag";
      rev = "v${version}";
      hash = "sha256-8mpkwv80PMfOPiammg596hW7xdrcum9Hl/v5O1DPWgY=";
    };

    vendorHash = "sha256-tMpcJ37yGr7i91Kwz57FmJ+u2x0CAus0+yWOR10fJLo=";
  };

  listEntries = path:
    map (name: path + "/${name}") (builtins.attrNames (builtins.readDir path));
in
{
  imports = listEntries ./devenv;

  packages = with pkgs; [
    air
    buf
    dapr-cli
    flyctl
    gh
    git
    go-migrate
    nixpkgs-fmt
  ] ++ [
    # self build packages
    protoc-go-inject-tag
  ];
}
