{ pkgs-unst, ... }:
{
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.systemd-boot.configurationLimit = 5;
  boot.kernelPackages = pkgs-unst.linuxPackages_xanmod_latest;
}
