{ user, ... }:
{
  networking.hostName = user.hostname;
  networking.networkmanager.enable = true;
}
