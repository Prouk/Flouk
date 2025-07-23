{ pkgs-unst, ... }:
{
  home.packages = with pkgs-unst; [
    alsa-scarlett-gui
  ];
}
