{ config, ... }:
{
    hardware.graphics = {
        enable = true;
    };

    hardware.nvidia = {
        modesetting.enable = true;
        nvidiaSettings = true;
        open = true;
        package = config.boot.kernelPackages.nvidiaPackages.beta;
        powerManagement.enable = true;
        powerManagement.finegrained = false;
    };

    services.xserver.videoDrivers = [
        "nvidia"
    ];
}
