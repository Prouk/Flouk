{ pkgs, ... }:
{
  packages = with pkgs; [
    delve
    go
    gopls
    templ
  ];
}
