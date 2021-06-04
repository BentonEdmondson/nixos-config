{ config, pkgs, ...}: {

    swapDevices = [ { device = "/swapfile"; size = 1024; } ];
    
    # use the systemd-boot EFI boot loader.
    boot.loader.systemd-boot.enable = true;
    boot.loader.efi.canTouchEfiVariables = true;

}