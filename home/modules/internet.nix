{
  pkgs-unst,
  zen-browser,
  user,
  ...
}:
{
  home.packages = with pkgs-unst; [
    vesktop
    thunderbird
    zen-browser.packages.${user.system}.default
  ];
}
