{ ... }:

{
  imports = [
    ./hardware-configuration.nix
  ];

  nix.settings.auto-optimise-store = true;
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  nixpkgs.config = {
    cudaSupport = true;
    allowUnfree = true;
  };

  system.stateVersion = "24.11";
}
