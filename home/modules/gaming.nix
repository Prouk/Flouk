{ pkgs-unst, ... }:
{
  home.packages = with pkgs-unst; [
    protonup
  ];

  programs.lutris = {
    enable = true;
    package = pkgs-unst.lutris;
    extraPackages = with pkgs-unst; [
      mangohud
      umu-launcher
      vulkan-tools
      vulkan-loader      
    ];
  };  
}
