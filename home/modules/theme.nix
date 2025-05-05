{ pkgs, ... }:
{
  home.pointerCursor = {
    enable = true;
    gtk.enable = true;
    x11.enable = true;
    hyprcursor.enable = true;
    package = pkgs.google-cursor;
    name = "GoogleDot-white";
    size = 12;
    hyprcursor.size = 12;
  };
}
