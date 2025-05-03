{ user, ... }:
{
  users.users.${user.name} = {
    isNormalUser = true;
    description = user.name;
    extraGroups = [ "networkmanager" "wheel" ];
  };
}
