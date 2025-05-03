{
  description = "Flouk flake, minimalist and easy on the eyes NixOS config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    zen-browser = {
      url = "github:0xc000022070/zen-browser-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, ... }@inputs:
  let
    system = "x86_64-linux";
  in
  {
    nixosConfigurations.prouk = nixpkgs.lib.nixosSystem {
      inherit system;
      modules = [
        /etc/nixos/configuration.nix
      ];
    };
  };
}
