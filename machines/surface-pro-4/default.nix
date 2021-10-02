{ flakes, ... }: {
    imports = [
        ./hardware-configuration.nix
        flakes.hardware.microsoft-surface
    ];

    networking.hostName = "surface-pro-4";

    services.xserver = {
        enable = true;
        displayManager.gdm.enable = true;
        desktopManager.gnome.enable = true;
    }
}