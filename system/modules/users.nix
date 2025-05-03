{ user, ... }:
{
    users.users.${user.username} = {
    isNormalUser = true;
    description = user.username;
    extraGroups = [ "networkmanager" "wheel" ];
  };
}
