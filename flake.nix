{
  description = "Flouk flake, minimalist and easy on the eyes NixOS config";

  # Disabled caching due to problem with hardware acceleration on some already builded packages
  nixConfig = {
    substituters = [
      "https://hydra.nixos.org/"
      "https://cache.nixos.org"
      "https://devenv.cachix.org"
      "https://hyprland.cachix.org"
      "https://nix-community.cachix.org"
    ];
    trusted-public-keys = [
      "hydra.nixos.org-1:CNHJZBh9K4tP3EKF6FkkgeVYsS3ohTl+oS0Qa8bezVs="
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
    ags = {
      url = "github:aylur/ags";
      inputs.nixpkgs.follows = "nixpkgs";
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
      url = "github:LGFae/swww?ref=40dcb40849f7600140ffe6c9477c4893365d8103";
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
      ags,
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
                  ags
                  hyprland
                  swww
                  user
                  zen-browser
                  ;
              };
            }
          ];
          specialArgs = {
            inherit
              pkgs
              hyprland
              self
              user
              ;
          };
          system = user.system;
        };

      };

      devShells.${user.system} = {
        nix = devenv.lib.mkShell {
          inherit inputs pkgs;
          modules = [
            ./devenv/nix.nix
          ];
        };
        go = devenv.lib.mkShell {
          inherit inputs pkgs;
          modules = [
            ./devenv/go.nix
          ];
        };
        ts = devenv.lib.mkShell {
          inherit inputs pkgs;
          modules = [
            ./devenv/ts.nix
          ];
        };
      };

      formatter.${user.system} = nixpkgs.legacyPackages.${user.system}.nixfmt-tree;
    };
}
