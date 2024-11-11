{ hostName, ... }:
{
    networking.enableIPv6 = false;
    networking.hostName = hostName;
    networking.networkmanager.enable = true;
}
