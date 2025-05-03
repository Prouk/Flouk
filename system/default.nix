{ config, pkgs, ... }:
{
  imports = [
    ./system/configuration.nix
    ./modules
  ];
}
