{ config, pkgs-unst, ... }:
{

  boot.blacklistedKernelModules = [ "nouveau" ];

  hardware.graphics = {
    enable = true;
    enable32Bit = true;
    extraPackages = with pkgs-unst; [
      nvidia-vaapi-driver
    ];
  };

  hardware.nvidia = {
    modesetting.enable = true;
    powerManagement.enable = false;
    powerManagement.finegrained = false;
    # open = true; # do what you want
    open = false;
    nvidiaSettings = true;
    package = config.boot.kernelPackages.nvidiaPackages.beta;
  };

  environment.systemPackages = with pkgs-unst; [
    ffmpeg-full
    nvtopPackages.nvidia
    glxinfo
  ];

  services.xserver.videoDrivers = [ "nvidia" ];
}
