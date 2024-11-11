{ hyprland, system, ... }:
{
    programs.hyprland.enable = true;
    programs.hyprland.package = hyprland.packages.${system}.hyprland;
}
