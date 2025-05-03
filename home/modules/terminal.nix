{ ... }:
{
  programs.fish = {
    enable = true;
  };

  home.shell.enableFishIntegration = true;

  programs.kitty = {
    enable = true;
    shellIntegration.enableFishIntegration = true;
  };
}
