{ pkgs, system, zen-browser, ... }:
{
    home.packages = with pkgs; [
        ags
        alsa-scarlett-gui
        btop
        fastfetch
        hyprpaper
        hyprshot
        kitty
        playerctl
        pwvucontrol
        wofi
        vesktop
        waybar
        wev
        xfce.thunar
        zed-editor
        zen-browser.packages.${system}.generic
    ];
}
