{ flakes, ... }: {
    programs.sway.enable = true;

    home-manager.users.benton.xsession = {
        enable = true;
        pointerCursor = {
            package = flakes.nixpkgs.bibata-cursors;
            name = "Bibata_Classic";
            size = 48;
        };
    };

    home-manager.users.benton.home.file = {
        # start sway on login
        ".profile".text = "sway";

        # sway configuration files
        ".config/sway/config" = {
            source = ./sway-config.in;
            onChange = "sway reload";
        };
        ".config/sway/wallpaper" = {
            source = ./wallpaper;
            onChange = "sway reload";
        };
    };

}