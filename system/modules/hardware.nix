{ ... }:
{
  hardware.wooting = {
    enable = true;
  };

  # if hardware.wooting no worky
  # environment.systemPackages = with pkgs-unst; [
    # wootility
    # wooting-udev-rules
  # ];
}
