{ pkgs, ... }:
{
    boot.loader.efi.canTouchEfiVariables = true;
    boot.loader.systemd-boot.enable = true;
    boot.kernelPackages = pkgs.linuxPackages_xanmod_stable;
}
