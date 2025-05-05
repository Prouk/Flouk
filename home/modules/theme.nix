{ pkgs, ... }:
{
  home.pointerCursor = {
    enable = true;
    package = pkgs.google-cursor;
    name = "GoogleDot-White";
    size = 24;
  };

  gtk = {
    enable = true;
    theme = {
        package = pkgs.graphite-gtk-theme;
        name = "Graphite-Dark";

    };
    cursorTheme = {
      name = "GoogleDot-White";
    };
    iconTheme = {
      package = pkgs.nordzy-icon-theme;
      name = "Nordzy-Dark";
    };
  };
}
