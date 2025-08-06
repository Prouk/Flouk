{ config, pkgs-unst, ... }:
{
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
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
    nvtopPackages.nvidia
    cudatoolkit
    ffmpeg-full
    vulkan-tool
  ];

  services.xserver.videoDrivers = [ "nvidia" ];
}
