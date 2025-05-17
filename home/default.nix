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
    adwaita-icon-theme
    android-tools
    btop
    dunst
    file
    fragments
    hyprshot
    kitty
    nano
    nerd-fonts.symbols-only
    p7zip-rar
    rofi-wayland
    swww
    # xfce.thunar
    vesktop
    waybar
    wev
    yazi
    zen-browser.packages.${user.system}.twilight
    zed-editor
  ];
}
