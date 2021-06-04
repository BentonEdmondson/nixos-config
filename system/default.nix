{ pkgs, ... }: {

    imports = [
        ./boot
        ./gnome
        ./networking
    ];

    # enable flakes
    nix.package = pkgs.nixUnstable;
    nix.extraOptions = "experimental-features = nix-command flakes";

    networking.hostName = "surface-pro-4";
    time.timeZone = "America/Chicago";
    services.printing.enable = true;
    sound.enable = true;
    hardware.pulseaudio.enable = true;
    services.xserver.libinput.enable = true;

    users.mutableUsers = false;
    users.users.benton = {
        isNormalUser = true;
        extraGroups = [ "wheel" "networkmanager" ];
        passwordFile = "/etc/passwordFile-benton";
    };

    # disable password-based login for root.
    users.users.root.hashedPassword = "!";

    system.stateVersion = "20.09";
} 
