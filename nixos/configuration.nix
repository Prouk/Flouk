{ ... }:
{
    imports = [
        ./hardware-configuration.nix
        ./modules/import.nix
        ./packages.nix
    ];

    console.keyMap = "fr";

    i18n.defaultLocale = "fr_FR.UTF-8";

    nix.settings.auto-optimise-store = true;
    nix.settings.experimental-features = [
        "nix-command"
        "flakes"
    ];

    nixpkgs.config.allowUnfree = true;

    programs.steam.enable = true;

    system.stateVersion = "24.05";

    time.timeZone = "Europe/Paris";
}
