{ lib, pkgs, ... }:
{
  programs.zsh = {
    enable = true;
    initContent = lib.mkOrder 1200 "fastfetch";
    oh-my-zsh = {
      enable = true;
      package = pkgs.oh-my-zsh;
      theme = "agnoster";
    };
    package = pkgs.zsh;
  };
}
