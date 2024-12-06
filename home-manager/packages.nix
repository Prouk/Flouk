{ pkgs, system, zen-browser, ... }:
{
    home.packages = with pkgs; [
        alsa-scarlett-gui
        btop
        fastfetch
        fragments
        heroic
        hyprpaper
        hyprshot
        kitty
        mpv
        nerd-fonts.symbols-only
        nerd-fonts.zed-mono
        onlyoffice-bin
        playerctl
        pwvucontrol
        scrcpy
        unzip
        vesktop
        wofi
        xfce.thunar
        xfce.thunar-volman
        zed-editor
        zen-browser.packages.${system}.generic
        zip
    ];
}
