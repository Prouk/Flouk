{ hyprspace, system, ...}:
{
    xdg.configFile."hypr" = {
        source = ../../config/hypr;
        recursive = true;
    };
    wayland.windowManager.hyprland = {
        plugins = [
            hyprspace.packages.${system}.Hyprspace
        ];
    };
    xdg.configFile."rofi" = {
        source = ../../config/rofi;
        recursive = true;
    };
}
