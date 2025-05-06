{ pkgs, zen-browser, user, ... }:
{
  imports = [
    ./home.nix
    ./config.nix
    ./modules/gaming.nix
    ./modules/theme.nix
    ./modules/video.nix
  ];

  home.packages = with pkgs; [
    ags
    android-tools
    btop
    hyprshot
    kitty
    mako
    nano
    rar
    rofi-wayland
    swww
    unzip
    xfce.thunar
    vesktop
    wev
    zen-browser.packages.${user.system}.twilight
    zed-editor
    zip
  ];
}
