{ pkgs, ... }:
{
  home.packages = with pkgs; [
    lutris
    protontricks
    protonup
    umu-launcher
    vulkan-loader
    vulkan-tools
    winetricks
  ];
}
