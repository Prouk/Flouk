{ pkgs, userName, ... }:
{
    users = {
        users.${userName} = {
            isNormalUser = true;
            extraGroups = [ "networkmanager" "wheel" "input" "kvm" "adbusers" ];
            shell = pkgs.fish;
            useDefaultShell = false;
        };
    };
}
