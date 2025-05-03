{
  description = "Flouk flake, minimalist and easy on the eyes NixOS config";

  inputs = {
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    zen-browser = {
      url = "github:0xc000022070/zen-browser-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    nixpkgs,
    zen-browser,
    ...
  } @ inputs:
  let
    system = "x86_64-linux";
  in
  {
    nixosConfigurations = {
      prouk = nixpkgs.lib.nixosSystem {
        modules = [
            ./system/default.nix
        ];
        specialArgs = { inherit nixpkgs; };
        system = system;
      };
    };
  };
}
