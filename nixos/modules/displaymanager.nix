{
    services.xserver = {
        layout = "fr";
        xkb.variant = "azerty";
    };
    services.displayManager.sddm = {
        enable = true;
        wayland.enable = true;
    };
}
