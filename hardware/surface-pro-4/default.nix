{ flakes, ... }: {
    imports = [
        ./hardware-configuration.nix
        flakes.hardware.nixosModules.microsoft-surface
    ];

    swapDevices = [ { device = "/swapfile"; size = 1024; } ];
}