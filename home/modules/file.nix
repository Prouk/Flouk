{ pkgs-unst, ... }:
{
  programs.yazi = {
    enable = true;
    enableZshIntegration = true;
    package = pkgs-unst.yazi;
    settings = {
      mgr = {
        show_hidden = true;
        show_symlink = true;
      };
    };
  };
}
