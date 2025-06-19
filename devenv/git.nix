{ pkgs, ... }:
{
  packages = with pkgs; [
    act
    yaml-language-server
  ];
}
