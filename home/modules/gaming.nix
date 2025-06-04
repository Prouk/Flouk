{ pkgs-unst, ... }:
{
  home.packages = with pkgs-unst; [
    lutris
    protontricks
    protonup
    umu-launcher
    vulkan-loader
    vulkan-tools
    winetricks
  ];
}
