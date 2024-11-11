{ pkgs, ... }:
{
    environment.systemPackages = with pkgs; [
        git
        home-manager
        nano
        xdg-desktop-portal-gtk
    ];
}
