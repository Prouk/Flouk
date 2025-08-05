{ pkgs-unst, ... }:
{
  hardware.wooting = {
    enable = true;
  };

  environment.systemPackages = with pkgs-unst; [
    wootility
    wooting-udev-rules
  ];
}
