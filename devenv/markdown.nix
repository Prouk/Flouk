{ pkgs, ... }:
{
  packages = with pkgs; [
    marksman
    markdown-oxide
  ];
}
