{ pkgs-unst, ... }:
{
  home.packages = with pkgs-unst; [
    hyprshot
    btop
    wev
    nix-output-monitor
  ];
}
