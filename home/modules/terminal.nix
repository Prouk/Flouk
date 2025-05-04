{ user, pkgs, ... }:
{

  home.shell.enableFishIntegration = true;

  programs.fish.enable = true;
  programs.kitty = {
    enable = true;
    shellIntegration.enableFishIntegration = true;
  };
}
