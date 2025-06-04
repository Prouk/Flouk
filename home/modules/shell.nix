{ lib, pkgsunst, ... }:
{
  programs.zsh = {
    enable = true;
    initContent = lib.mkOrder 1200 "fastfetch";
    oh-my-zsh = {
      enable = true;
      package = pkgsunst.oh-my-zsh;
      theme = "agnoster";
    };
    package = pkgsunst.zsh;
  };
}
