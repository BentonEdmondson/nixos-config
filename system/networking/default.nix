{ config, pkgs, ...}: {
    networking.interfaces.wlp2s0.useDHCP = true;

    services.openssh.enable = true;
}