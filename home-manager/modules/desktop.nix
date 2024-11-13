{
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
