{ flakes, ... }: {
    imports = [
        ./hardware-configuration.nix
#        flakes.hardware.microsoft-surface
    ];

    networking.hostName = "blade-14";
    swapDevices = [ { device = "/swapfile"; size = 1024; } ];
}
