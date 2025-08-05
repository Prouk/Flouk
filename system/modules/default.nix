{ pkgs-unst, ... }:
{
  imports = [
    ./boot.nix
    ./desktop.nix
    ./hardware.nix
    ./gaming.nix
    ./greeter.nix
    ./locale.nix
    ./mount.nix
    ./networking.nix
    ./nvidia.nix
    ./shell.nix
    ./sound.nix
    ./users.nix
  ];
  environment.systemPackages = with pkgs-unst; [
    fastfetch
    git
    tree
  ];

  virtualisation.docker.enable = true;
}
