{
  description = "Flouk flake, minimalist and easy on the eyes NixOS config";

  # Disabled caching due to problem with hardware acceleration on some already builded packages
  nixConfig = {
    substituters = [
      "https://cache.nixos.org"
      "https://devenv.cachix.org"
      "https://hyprland.cachix.org"
      "https://nix-community.cachix.org"
    ];
    trusted-public-keys = [
      "cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY="
      "devenv.cachix.org-1:w1cLUi8dv3hnoSPGAuibQv+f9TZLr6cv/Hm9XgU50cw="
      "hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc="
      "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
    ];
  };

  inputs = {
    nixpkgs = {
      url = "github:nixos/nixpkgs?ref=nixos-unstable";
    };
    devenv = {
      url = "github:cachix/devenv";
    };
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    hyprland = {
      url = "github:hyprwm/Hyprland";
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

  outputs =
    {
      self,
      devenv,
      home-manager,
      hyprland,
      nixpkgs,
      swww,
      zen-browser,
      ...
    }@inputs:
    let
      pkgs = import nixpkgs {
        system = user.system;
        config.allowUnfree = true;
        config.cudaSupport = true;
      };
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
            home-manager.nixosModules.home-manager
            {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.users.${user.name} = ./home/default.nix;
              home-manager.extraSpecialArgs = {
                inherit
                  pkgs
                  hyprland
                  swww
                  user
                  zen-browser
                  ;
              };
            }
          ];
          specialArgs = { inherit pkgs hyprland user; };
          system = user.system;
        };

      };
      packages.${user.system} = {
        devenv-up = self.devShells.${user.system}.default.config.procfileScript;
        devenv-test = self.devShells.${user.system}.default.config.test;
      };
      devShells.${user.system}.default = devenv.lib.mkShell {
        inherit inputs pkgs;
        modules = [
          ./devenv
        ];
      };

      formatter.${user.system} = nixpkgs.legacyPackages.${user.system}.nixfmt-tree;
    };

}
