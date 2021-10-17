{ flakes, ... }: {
    programs.sway = {
        enable = true;
        extraPackages = [
            flakes.nixpkgs.dmenu
            # for the gsettings updater script
            flakes.nixpkgs.glib
        ];
    };
    environment.etc = {
        "sway/config".source = ./sway.conf;
        # TODO: I don't think this works--it has to be run manually
        "sway/import-gsettings".source = ./import-gsettings;
    };
    home-manager.users.benton.home.file.".config/sway/wallpaper".source = ./wallpaper;

    home-manager.users.benton = {
        xsession = {
            enable = true;
            pointerCursor = {
                package = flakes.nixpkgs.bibata-cursors;
                name = "Bibata_Classic";
                size = 48;
            };
        };
        gtk = {
            enable = true;
            gtk3.extraConfig.gtk-cursor-theme-name = "Bibata_Classic";
        };
    };
}