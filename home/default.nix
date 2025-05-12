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
    android-tools
    btop
    hyprshot
    kitty
    mako
    nano
    nerd-fonts.symbols-only
    rar
    rofi-wayland-unwrapped
    swww
    unzip
    # xfce.thunar
    vesktop
    waybar
    wev
    yazi-unwrapped
    zen-browser.packages.${user.system}.twilight
    zed-editor
    zip
  ];
}
