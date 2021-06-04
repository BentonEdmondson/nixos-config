{ inputs, ...}: {
    inputs = [
        ./hardware-configuration.nix
        inputs.hardware.nixosModules.microsoft-surface
    ];
}