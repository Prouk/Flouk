{ pkgs, ... }:
{
  packages = with pkgs; [
    typescript-language-server
  ];
}
