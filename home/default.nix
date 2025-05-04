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
    nano
    rofi-wayland
    swww
    vesktop
    wev
    zen-browser.packages.${user.system}.twilight
    zed-editor
  ];
}
