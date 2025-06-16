{
  ags,
  pkgs-unst,
  ...
}:
{
  imports = [ags.homeManagerModules.default];

  programs.ags = {
    enable = true;

    configDir = null;

    extraPackages = with pkgs-unst;[];
  };
}
