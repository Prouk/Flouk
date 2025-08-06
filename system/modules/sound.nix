{ pkgs-unst, ... }:
{
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    package = pkgs-unst.pipewire;
  };

  environment.systemPackages = with pkgs-unst; [
    pwvucontrol
  ];
}
