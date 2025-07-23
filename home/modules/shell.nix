{ lib, pkgs-unst, ... }:
{
  programs.zsh = {
    enable = true;
    initContent = lib.mkOrder 1200 "fastfetch";
    oh-my-zsh = {
      enable = true;
      package = pkgs-unst.oh-my-zsh;
      theme = "agnoster";
    };
    package = pkgs-unst.zsh;
  };

  home.packages = with pkgs-unst; [
    kitty
  ];
}
