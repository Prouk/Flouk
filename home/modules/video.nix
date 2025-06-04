{ pkgs-unst, ... }:
{
  programs.obs-studio = {
    enable = true;
    plugins = with pkgs-unst.obs-studio-plugins; [
      obs-vaapi
    ];
  };
}
