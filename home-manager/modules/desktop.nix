{ hyprspace, system, pkgs, ... }:
{
    services.dunst = {
        enable = true;
    };
    xdg.configFile."hypr" = {
        source = ../../config/hypr;
        recursive = true;
    };
    wayland.windowManager.hyprland = {
        plugins = [
            hyprspace.packages.${system}.Hyprspace
        ];
    };
    xdg.configFile."wofi" = {
        source = ../../config/wofi;
        recursive = true;
    };
}
