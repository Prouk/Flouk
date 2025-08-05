{ user, pkgs-unst, ... }:
{
  users.users.${user.name} = {
    isNormalUser = true;
    description = user.name;
    extraGroups = [
      "docker"
      "networkmanager"
      "wheel"
    ];
    shell = pkgs-unst.zsh;
  };

  security.polkit.enable = true;

  environment.systemPackages = with pkgs-unst; [
    polkit_gnome
  ];
}
