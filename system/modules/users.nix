{ user, pkgsunst, ... }:
{
  users.users.${user.name} = {
    isNormalUser = true;
    description = user.name;
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
    shell = pkgsunst.zsh;
  };
}
