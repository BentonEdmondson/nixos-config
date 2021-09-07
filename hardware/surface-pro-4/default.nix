{ flakes, ... }: {
    imports = [
        ./hardware-configuration.nix
        flakes.hardware.microsoft-surface
    ];

    networking.hostName = "surface-pro-4";
    swapDevices = [ { device = "/swapfile"; size = 1024; } ];
}