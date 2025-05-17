{ pkgs, ... }:
{
  home.pointerCursor = {
    enable = true;
    package = pkgs.phinger-cursors;
    name = "phinger-cursors-dark";
    size = 24;
  };

  gtk = {
    enable = true;
    theme = {
        package = pkgs.graphite-gtk-theme;
        name = "Graphite-Dark";

    };
    cursorTheme = {
      name = "phinger-cursors-dark";
    };
    iconTheme = {
      package = pkgs.nordzy-icon-theme;
      name = "Nordzy-Dark";
    };
  };
}
