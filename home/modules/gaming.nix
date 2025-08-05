{ pkgs-unst, osConfig,  ... }:
{
  home.packages = with pkgs-unst; [
    protonup
  ];

  programs.lutris = {
    enable = true;
    package = pkgs-unst.lutris;
    steamPackage = osConfig.programs.steam.package;
    extraPackages = with pkgs-unst; [
      mangohud
      winetricks
      osConfig.programs.gamescope.package
      umu-launcher
    ];
  };  
}
