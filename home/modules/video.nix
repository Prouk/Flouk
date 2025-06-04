{ pkgsunst, ... }:
{
  programs.obs-studio = {
    enable = true;
    plugins = with pkgsunst.obs-studio-plugins; [
      obs-vaapi
    ];
  };
}
