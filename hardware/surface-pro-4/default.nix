{ inputs, ... }: {
    imports = [
        ./hardware-configuration.nix
        inputs.hardware.nixosModules.microsoft-surface
    ];

    swapDevices = [ { device = "/swapfile"; size = 1024; } ];
}