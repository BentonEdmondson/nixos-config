{ flakes, ... }: {

    imports = [
        ./boot
        ./gnome
        ./networking
        ./xdg
        flakes.home
    ];

    home-manager = {
        # for purity
        useGlobalPkgs = true;
        useUserPackages = true;
    };

    nix = {
        # enable flakes
        package = flakes.nixpkgs.nixUnstable;
        extraOptions = "experimental-features = nix-command flakes";

        optimise.automatic = true;
        gc.automatic = true;
    };

    time.timeZone = "America/Detroit";
    sound.enable = true;
    hardware.pulseaudio.enable = true;
    services.xserver.libinput.enable = true;

    users = {
        mutableUsers = false;
        users = {
            benton = {
                isNormalUser = true;
                extraGroups = [ "wheel" "networkmanager" ];
                hashedPassword = "$6$OdSiSlN9o$xHOCBTBgll28xbHfsi0kcC4J3fNngmEYSVzfP57HaHzcO/HKzD0ca8uQLH8rV7PwBSxWEWRlU6sMaRI9Vd/qL1";
            };
            # disable root login
            root.hashedPassword = "!";
        };
    };
    # convenience
    security.sudo.wheelNeedsPassword = false;

    system.stateVersion = "20.09";
} 
