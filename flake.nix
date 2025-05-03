{
  description = "Flouk flake, minimalist and easy on the eyes NixOS config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    zen-browser = {
      url = "github:0xc000022070/zen-browser-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, home-manager, nixpkgs, zen-browser, ... }@inputs:
  let
    inherit (self) outputs;
    system = "x86_64-linux";
  in
  {
    nixosConfigurations = {
      prouk = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs nixpkgs home-manager zen-browser; };
        modules = [
            ./system/default.nix
        ];
      };
    };
  };
}
