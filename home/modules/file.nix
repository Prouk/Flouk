{ pkgs-unst, ... }:
{
  programs.yazi = {
    enable = true;
    enableZshIntegration = true;
    package = pkgs-unst.yazi;
    plugins = {
     inherit (pkgs-unst.yaziPlugins) mount;
    }
    ;
    settings = {
      mgr = {
        show_hidden = true;
        show_symlink = true;
      };
    };
    keymap = {
      mgr.prepend_keymap = [
        { run = "plugin mount"; on = "M"; }
      ];
    };
  };
}
