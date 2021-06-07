{ pkgs, ... }: {

    imports = [
        ./boot
        ./gnome
        ./networking
    ];

    # enable flakes
    nix.package = pkgs.nixUnstable;
    nix.extraOptions = "experimental-features = nix-command flakes";

    # 3:15 am daily is my understanding
    nix.optimise.automatic = true;
    nix.gc.automatic = true;

    time.timeZone = "America/Chicago";
    sound.enable = true;
    hardware.pulseaudio.enable = true;
    services.xserver.libinput.enable = true;

    users.mutableUsers = false;
    users.users.benton = {
        isNormalUser = true;
        extraGroups = [ "wheel" "networkmanager" ];
        hashedPassword = "$6$OdSiSlN9o$xHOCBTBgll28xbHfsi0kcC4J3fNngmEYSVzfP57HaHzcO/HKzD0ca8uQLH8rV7PwBSxWEWRlU6sMaRI9Vd/qL1";
    };

    # disable password-based login for root.
    users.users.root.hashedPassword = "!";

    system.stateVersion = "20.09";
} 
