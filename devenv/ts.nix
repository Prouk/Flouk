{ pkgs-unst, ... }:
{
  packages = with pkgs-unst; [
    typescript-language-server
  ];
}
