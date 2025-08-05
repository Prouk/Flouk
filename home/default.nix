{
  pkgs-unst,
  quickshell,
  swww,
  user,
  ...
}:
{
  imports = [
    ./home.nix
    ./config.nix
    ./modules/dev.nix
    ./modules/file.nix
    ./modules/gaming.nix
    ./modules/internet.nix
    ./modules/shell.nix
    ./modules/theme.nix
    ./modules/utility.nix
    ./modules/video.nix
  ];

  home.packages = with pkgs-unst; [
    digikam
    dunst
    lazygit
    obsidian
    quickshell.packages.${user.system}.default
    rofi-wayland
    swww.packages.${user.system}.swww
  ];
}
