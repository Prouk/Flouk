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
    file
    hyprshot
    kitty
    mako
    nano
    nerd-fonts.symbols-only
    p7zip
    rofi-wayland-unwrapped
    swww
    # xfce.thunar
    vesktop
    waybar
    wev
    yazi-unwrapped
    zen-browser.packages.${user.system}.twilight
    zed-editor
  ];
}
