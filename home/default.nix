{ pkgs, swww, zen-browser, user, ... }:
{
  imports = [
    ./home.nix
    ./config.nix
    ./modules/gaming.nix
    ./modules/theme.nix
    ./modules/video.nix
  ];

  home.packages = with pkgs; [
    adwaita-icon-theme
    alsa-scarlett-gui
    android-tools
    btop
    dunst
    file
    fragments
    helix
    hyprshot
    kitty
    nano
    nerd-fonts.symbols-only
    p7zip-rar
    rofi-wayland
    swww.packages.${user.system}.swww
    # xfce.thunar
    vesktop
    waybar
    wev
    yazi
    zen-browser.packages.${user.system}.default
    zed-editor
  ];
}
