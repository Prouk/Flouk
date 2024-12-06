{ ... }:
{
    imports = [
        ./hardware-configuration.nix
        ./modules/import.nix
        ./packages.nix
    ];

    console.keyMap = "fr";

    hardware.bluetooth.enable = true;
    hardware.bluetooth.powerOnBoot = true;
    hardware.logitech.wireless.enable = true;
    hardware.uinput.enable = true;

    i18n.defaultLocale = "fr_FR.UTF-8";

    nix.settings.auto-optimise-store = true;
    nix.settings.experimental-features = [
        "nix-command"
        "flakes"
    ];

    nixpkgs.config.allowUnfree = true;

    programs.adb.enable = true;

    programs.fish.enable = true;

    services.gvfs.enable = true;

    programs.steam.enable = true;

    services.tumbler.enable = true;

    system.stateVersion = "24.05";

    time.timeZone = "Europe/Paris";
}
