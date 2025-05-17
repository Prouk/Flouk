{ user, ... }:
{
  hardware.bluetooth.enable = true;
  hardware.bluetooth.powerOnBoot = true;
  hardware.bluetooth.settings = {
    General = {
      Experimental = true;
    };
  };
  networking.hostName = user.hostname;
  networking.networkmanager.enable = true;
  services.blueman.enable = true;
}
