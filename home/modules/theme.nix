{ pkgs-unst, ... }:
{
  home.pointerCursor = {
    enable = true;
    package = pkgs-unst.phinger-cursors;
    name = "phinger-cursors-dark";
    size = 26;
  };

  gtk = {
    enable = true;
    theme = {
      package = pkgs-unst.graphite-gtk-theme;
      name = "Graphite-Dark";
    };
    cursorTheme = {
      name = "phinger-cursors-dark";
    };
    iconTheme = {
      package = pkgs-unst.nordzy-icon-theme;
      name = "Nordzy-Dark";
    };
  };

  home.packages = with pkgs-unst; [
    adwaita-icon-theme
    nerd-fonts.symbols-only
  ];
}
