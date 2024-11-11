{ userName, ... }:
{
    imports = [
        ./modules/import.nix
        ./packages.nix
    ];

    home = {
        username = userName;
        homeDirectory = "/home/prouk";
        stateVersion = "24.05";
    };

    programs.man.generateCaches = true;

    xdg.enable = true;
}
