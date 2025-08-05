{ pkgs-unst, ... }:
{
  programs.steam = {
    enable = true;
    package = pkgs-unst.steam;
    protontricks = {
      enable = true;
      package = pkgs-unst.protontricks;
    };
    
  };

  programs.gamescope = {
    enable = true;
    package = pkgs-unst.gamescope;
  };
}
