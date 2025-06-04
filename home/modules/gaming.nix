{ pkgsunst, ... }:
{
  home.packages = with pkgsunst; [
    lutris
    protontricks
    protonup
    umu-launcher
    vulkan-loader
    vulkan-tools
    winetricks
  ];
}
