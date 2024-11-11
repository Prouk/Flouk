{
    services = {
        pipewire = {
            enable = true;
            pulse.enable = true;
            extraConfig = {
                pipewire = {
                    "10-clock-rate" = {
                        "context.properties" = {
                            "default.clock.rate" = 44100;
                        };
                    };
                    "11-clock-quantum" = {
                        "context.properties" = {
                            "default.clock.quantum-floor" = 64;
                            "default.clock.quantum-limit" = 256;
                            "default.clock.min-quantum" = 64;
                            "default.clock.max-quantum" = 256;
                            "default.clock.quantum" = 128;
                        };
                    };
                };
            };
        };
    };
}
