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
    open = true;
    # open = false;
    nvidiaSettings = true;
    package = config.boot.kernelPackages.nvidiaPackages.beta;
  };

  environment.systemPackages = with pkgs-unst; [
    ffmpeg-full
    nvtopPackages.nvidia
    glxinfo
    libva-utils
  ];

  services.xserver.videoDrivers = [ "nvidia" ];
}
