{ hyprland, pkgs, user, ... }:
{
  environment.variables = {
    NIXOS_OZONE_WL=1;
  };

  programs.hyprland = {
    enable = true;
    package = hyprland.packages.${user.system}.hyprland;
    portalPackage = hyprland.packages.${user.system}.xdg-desktop-portal-hyprland;
  };
}
