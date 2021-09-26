{ flakes, ... }: {

    imports = [
        ./boot
        ./gnome
        ./networking
        ./xdg
        flakes.home
    ];

    #home-manager.sharedModules = [ { home.packages = flakes.lib.mkForce []; } ];
    #home-manager.users.benton.home.packages = flakes.lib.mkForce [];
    home-manager.useUserPackages = true;
    # for purity
    home-manager.useGlobalPkgs = true;

    # enable flakes
    nix.package = flakes.nixpkgs.nixUnstable;
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
    users.users.root.hashedPassword = "!";
    security.sudo.wheelNeedsPassword = false;

    system.stateVersion = "20.09";
} 