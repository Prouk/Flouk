{ pkgs, ... }:
{
  home.pointerCursor = {
    enable = true;
    gtk.enable = true;
    x11.enable = true;
    package = pkgs.google-cursor;
    name = "GoogleDot-White";
    size = 24;
    hyprcursor.size = 24;
  };
  gtk.theme = {
    package = pkgs.graphite-gtk-theme;
    name = "Graphite-Nord-Black";
  };
}
