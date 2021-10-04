{ flakes, ... }: {
    imports = [
        ./display
        ./hardware-configuration.nix
        flakes.hardware.common-pc-laptop
        flakes.hardware.common-pc-laptop-ssd
        flakes.hardware.common-pc-laptop-acpi_call
        flakes.hardware.common-cpu-amd
    ];

    networking.hostName = "blade-14";
}
