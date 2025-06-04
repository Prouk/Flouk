{ pkgsunst, ... }:
{
  programs.yazi = {
    enable = true;
    enableZshIntegration = true;
    package = pkgsunst.yazi;
    settings = {
      mgr = {
        show_hidden = true;
        show_symlink = true;
      };
    };
  };

  home.sessionVariables.TERMCMD = "kitty --class=file_chooser";

  xdg.portal = {
    enable = true;
    extraPortals = with pkgsunst; [
      xdg-desktop-portal-termfilechooser
    ];
  };

  xdg.portal.config.common = {
    "org.freedesktop.impl.portal.FileChooser" = "termfilechooser";
  };

  xdg.configFile."xdg-desktop-portal-termfilechooser/config" = {
    force = true;
    text = ''
      [filechooser]
      cmd=${pkgsunst.xdg-desktop-portal-termfilechooser}/share/xdg-desktop-portal-termfilechooser/yazi-wrapper.sh
      default_dir=$HOME/Downloads
    '';
  };
}
