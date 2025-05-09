{ pkgs, user, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
    ];

  nix.settings.auto-optimise-store = true;
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.cudaSupport = false;

  system.stateVersion = "24.11";
}
