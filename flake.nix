{
    # Description of the flake
    description = "Flouk is my main desktop system flake";

    inputs = {
        nixpkgs = {
            url = "github:nixos/nixpkgs/nixos-unstable";
        };
        home-manager-unstable = {
            url = "github:nix-community/home-manager";
            inputs.nixpkgs.follows = "nixpkgs";
        };
        hyprland = {
            url = "git+https://github.com/hyprwm/Hyprland?submodules=1";
        };
        zen-browser = {
            url = "github:pfaj/zen-browser-flake";
        };
    };

    outputs = inputs@{ self, home-manager, hyprland, nixpkgs, zen-browser, ... }:
        let
            hostName = "prouk";
            system = "x86_64-linux";
            userName = "prouk";
            pkgs = import nixpkgs {
                inherit system;
                config.allowUnfree = true;
            };
        in
        {
            nixosConfigurations.${hostName} = nixpkgs.lib.nixosSystem {
                specialArgs = {
                    inherit hostName hyprland pkgs system userName;
                };
                modules = [
                    ./nixos/configuration.nix
                ];
            };

            homeConfigurations.${userName} = home-manager.lib.homeManagerConfiguration {
                extraSpecialArgs = {
                    inherit hostName hyprland pkgs system userName zen-browser;
                };
                pkgs = nixpkgs.legacyPackages.${system};
                modules = [
                    ./home-manager/home.nix
                ];
            };
        };
    }
