{ pkgs, ... }:

let
  languagePackages = {
    go = pkgs.go_1_21;
    python = pkgs.python312;
  };
in
{
  languages = {
    go = {
      enable = true;
      package = languagePackages.go;
    };

    python = {
      enable = true;
      package = languagePackages.python;
    };
  };
}
