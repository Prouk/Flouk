{ pkgs, ... }:
{
    gtk = {
        cursorTheme = {
            name = "Vimix-Cursors";
            package = pkgs.vimix-cursor-theme;
            size = 32;
        };
        enable = true;
        iconTheme = {
            name = "Tela-grey-dark";
            package = pkgs.tela-icon-theme;
        };
        theme = {
            name = "Graphite-Dark";
            package = pkgs.graphite-gtk-theme;
        };
    };
    home.pointerCursor = {
        name = "Vimix-Cursors";
        package = pkgs.vimix-cursor-theme;
        size = 32;
    };

    xdg.configFile."vesktop/themes/" = {
        source = ../../config/vesktop/themes;
        recursive = true;
    };
}
