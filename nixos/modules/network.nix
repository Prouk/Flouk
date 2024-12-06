{ hostName, ... }:
{
    networking.enableIPv6 = false;
    networking.firewall.enable = false;
    networking.hostName = hostName;
    networking.networkmanager.enable = true;
    services.blueman.enable = true;
}
