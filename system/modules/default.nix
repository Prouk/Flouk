{ pkgsunst, ... }:
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
  environment.systemPackages = with pkgsunst; [
    fastfetch
    git
    tree
  ];

}
