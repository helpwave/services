{ pkgs, buildPackages, fetchurl, ... }:

let
  protoc-go-inject-tag = import ./nix/protoc-go-inject-tag.nix { inherit pkgs; };
  listEntries = path:
    map (name: path + "/${name}") (builtins.attrNames (builtins.readDir path));
in
{
  imports = listEntries ./nix/devenv;

  packages = with pkgs; [
    air
    buf
    dapr-cli
    flyctl
    gh
    git
    go-migrate
    grpcurl
    jq
    nixpkgs-fmt
    spicedb-zed
    sqlc
  ] ++ [
    # self build packages
    protoc-go-inject-tag
  ];
}
