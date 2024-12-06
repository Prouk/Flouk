{ ags, system, ... }:
{
    imports = [ ags.homeManagerModules.default ];
    programs.ags = {
        enable = true;
        extraPackages = [
            ags.packages.${system}.battery
            ags.packages.${system}.hyprland
            ags.packages.${system}.tray
        ];
    };
    services.dunst = {
        enable = true;
    };
    xdg.configFile."hypr" = {
        source = ../../config/hypr;
        recursive = true;
    };
    xdg.configFile."wofi" = {
        source = ../../config/wofi;
        recursive = true;
    };
}
