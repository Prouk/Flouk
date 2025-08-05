{ ... }:
{
  services = {
    xserver = {
      enable = true;
      xkb = {
        layout = "us";
      };
    };
    displayManager.sddm = {
      enable = true;
      wayland.enable = true; # May be causing sddm login problem with hyprland
    };
  };
}
