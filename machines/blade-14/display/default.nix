{ flakes, config, ... }: {
    programs.sway = {
        enable = true;
        extraPackages = [
            flakes.nixpkgs.dmenu
        ];
    };
    home-manager.users.benton.xdg.configFile = {
        "sway/config".source = ./sway.conf;
        "sway/wallpaper".source = ./wallpaper;
    };

    home-manager.users.benton.xsession = {
        enable = true;
        pointerCursor = {
            package = flakes.nixpkgs.bibata-cursors;
            name = "Bibata_Classic";
            size = 48;
        };
    };
}