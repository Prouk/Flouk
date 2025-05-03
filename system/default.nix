{ nixpkgs, ... }:
{
  imports = [
    ./configuration.nix
    ./modules
  ];
}
