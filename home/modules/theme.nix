{ pkgsunst, ... }:
{
  home.pointerCursor = {
    enable = true;
    package = pkgsunst.phinger-cursors;
    name = "phinger-cursors-dark";
    size = 26;
  };

  gtk = {
    enable = true;
    theme = {
      package = pkgsunst.graphite-gtk-theme;
      name = "Graphite-Dark";
    };
    cursorTheme = {
      name = "phinger-cursors-dark";
    };
    iconTheme = {
      package = pkgsunst.nordzy-icon-theme;
      name = "Nordzy-Dark";
    };
  };
}
