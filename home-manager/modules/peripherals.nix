{ pkgs, ... }:
{
    home.packages = with pkgs; [
        logitech-udev-rules
        solaar
        wev
    ];
}
