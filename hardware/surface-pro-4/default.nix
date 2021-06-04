{ inputs, ... }: {
    imports = [
        ./hardware-configuration.nix
        inputs.hardware.nixosModules.microsoft-surface
    ];
}