{ flakes, ... }: {
    imports = [
        ./display
        ./hardware-configuration.nix
    ];

    networking.hostName = "blade-14";
}
