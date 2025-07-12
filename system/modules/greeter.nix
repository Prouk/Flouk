{ ... }:
{
  services = {
    xserver = {
      xkb = {
        layout = "fr";
        variant = "azerty";
      };
    };
    displayManager.sddm = {
      enable = true;
      # wayland.enable = true;
    };
  };
  services.xserver.enable = true;
}
