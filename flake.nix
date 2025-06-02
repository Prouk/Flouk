{
  description = "Flouk flake, minimalist and easy on the eyes NixOS config";

  # Disabled caching due to problem with hardware acceleration on some already builded packages
  nixConfig = {
    substituters = [
      "https://cache.nixos.org"
      "https://nix-community.cachix.org"
      "https://hyprland.cachix.org"
    ];
    trusted-public-keys = [
      "cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY="
      "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
      "hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc="
    ];
  };

  inputs = {
    nixpkgs = {
      url = "github:nixos/nixpkgs?ref=nixos-unstable";
    };
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    hyprland = {
      # github:hyprwm/Hyprland";
      url = "git+https://github.com/hyprwm/Hyprland";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    swww = {
      url = "github:LGFae/swww";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    zen-browser = {
      url = "github:youwen5/zen-browser-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    home-manager,
    hyprland,
    nixpkgs,
    swww,
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
          {
            nix.settings.trusted-users = [ "${user.name}" ];
          }
          ./system
          home-manager.nixosModules.home-manager{
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.${user.name} = ./home/default.nix;
            home-manager.extraSpecialArgs = { inherit pgks hyprland swww user zen-browser; };
          }
        ];
        specialArgs = { inherit pgks hyprland user; };
        system = user.system;
      };
    };
    formatter.x86_64-linux = nixpkgs.legacyPackages.x86_64-linux.nixfmt-rfc-style;
  };
}
