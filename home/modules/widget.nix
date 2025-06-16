{
  ags,
  pkgs-unst,
  ...
}:
{
  imports = [ags];

  programs.ags = {
    enable = true;

    configDir = null;

    extraPackages = with pkgs-unst;[];
  };
}
