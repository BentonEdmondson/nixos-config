{ ... }: {
    networking.networkmanager.enable = true;
    networking.interfaces.wlp2s0.useDHCP = true;
    services.openssh.enable = true;
    services.printing.enable = true;
}