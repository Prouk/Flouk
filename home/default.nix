{ pkgs, zen-browser, user, ... }:
{
  imports = [
    ./home.nix
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
    zen-browser.packages.${user.system}.twilight
    zed-editor
  ];
}
