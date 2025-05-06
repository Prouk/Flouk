{ hyprland, pkgs, user, ... }:
{
  programs.hyprland = {
    enable = true;
    package = hyprland.packages.${user.system}.hyprland;
    portalPackage = hyprland.packages.${user.system}.xdg-desktop-portal-hyprland;
  };
}
