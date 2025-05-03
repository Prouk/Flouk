{ pkgs, ... }:
{
  imports = [
    ./boot.nix
    ./desktop.nix
    ./gaming.nix
    ./greeter.nix
    ./locale.nix
    ./networking.nix
    ./sound.nix
    ./users.nix
  ];
  environment.systemPackages = with pkgs; [
    fastfetch
    git
    tree
  ];
}
