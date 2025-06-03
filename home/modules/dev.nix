{ pkgs, ... }:
{
  programs.direnv {
    enable = true;
    enableZshZshIntegration = true;
    nix-direnv.enable = true;
  };
}
