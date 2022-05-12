{ flakes, ... }: {
    imports = [
        ./display
        ./hardware-configuration.nix
        flakes.hardware.common-pc-laptop
        flakes.hardware.common-pc-laptop-ssd
        flakes.hardware.common-pc-laptop-acpi_call
        flakes.hardware.common-cpu-amd
    ];

    #boot.kernelPackages = flakes.nixpkgs.linuxPackages_latest;
    services.xserver.videoDrivers = [ "nouveau" ];

    networking.hostName = "blade-14";
}
