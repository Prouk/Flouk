{ pkgs, ... }:
{
  programs.yazi = {
    enable = true;
    enableZshIntegration = true;
    package = pkgs.yazi;
    settings = {
      mgr = {
        show_hidden = true;
        show_symlink = true;
      };
    };
  };
}
