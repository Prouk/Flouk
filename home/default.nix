{ pkgs, zen-browser, user, ... }:
{
  imports = [
    ./home.nix
    ./config.nix
    ./modules/gaming.nix
    ./modules/terminal.nix
  ];

  home.packages = with pkgs; [
    ags
    android-tools
    kitty
    nano
    rofi-wayland
    swww
    xfce.thunar
    vesktop
    wev
    zen-browser.packages.${user.system}.twilight
    zed-editor
  ];
}
