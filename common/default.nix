{ flakes, ... }: {

    imports = [
        ./xdg
	./qmk
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
    };

    time = {
        timeZone = "America/Detroit";
        hardwareClockInLocalTime = true;
    };

    sound.enable = true;

    hardware = {
        pulseaudio.enable = true;
        bluetooth.enable = true;
    };

    #services.connman.enable = true;
    networking.networkmanager.enable = true;

    users = {
        mutableUsers = false;
        users = {
            benton = {
                isNormalUser = true;
                extraGroups = [ "wheel" "networkmanager" "bluetooth" ];
                hashedPassword = "$6$OdSiSlN9o$xHOCBTBgll28xbHfsi0kcC4J3fNngmEYSVzfP57HaHzcO/HKzD0ca8uQLH8rV7PwBSxWEWRlU6sMaRI9Vd/qL1";
                shell = flakes.nixpkgs.fish;
            };
            # disable root login
            root.hashedPassword = "!";
        };
    };
    programs.fish.enable = true;
    # convenience
    security.sudo.wheelNeedsPassword = false;

    # TODO: get grub working
    boot.loader.systemd-boot.enable = true;
    #boot.loader = {
    #    efi = {
    #        canTouchEfiVariables = true;
    #    };
    #    grub = {
    #        enable = true;
    #        efiSupport = true;
    #        device = "nodev";
    #        # this makes windows appear if dual booting
    #        useOSProber = true;
    #    };
    #};

    fonts.fonts = [ flakes.nixpkgs.source-code-pro ];
    
    system.stateVersion = "20.09";
} 
