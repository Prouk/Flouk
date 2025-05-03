{
  description = "Flouk flake, minimalist and easy on the eyes NixOS config";

  inputs = {
    nixpkgs = {
      url = "github:nixos/nixpkgs?ref=nixos-unstable";
    };
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    hyprland = {
      url = "github:hyprwm/Hyprland";
    };
    zen-browser = {
      url = "github:0xc000022070/zen-browser-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    home-manager,
    hyprland,
    nixpkgs,
    zen-browser,
    ...
  } @ inputs:
  let
    pgks = nixpkgs.legacyPackages.${user.system};
    user = {
      hostname = "prouk";
      name = "prouk";
      system = "x86_64-linux";
    };
  in
  {
    nixosConfigurations = {
      ${user.hostname} = nixpkgs.lib.nixosSystem {
        modules = [
            ./system
            home-manager.nixosModules.home-manager{
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.users.${user.name} = ./home/default.nix;
              home-manager.extraSpecialArgs = { inherit pgks hyprland user zen-browser; };
            }
        ];
        specialArgs = { inherit pgks hyprland user; };
        system = user.system;
      };
    };
  };
}
