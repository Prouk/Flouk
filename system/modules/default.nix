{ pkgs-unst, ... }:
{
  imports = [
    ./boot.nix
    ./desktop.nix
    ./gaming.nix
    ./greeter.nix
    ./locale.nix
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

}
