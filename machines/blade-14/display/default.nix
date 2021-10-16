{ flakes, ... }: {
    programs.sway.enable = true;
    environment.etc = {
        "sway/config".source = ./sway.conf;
        "profile".text = ''
            if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]; then
                exec sway
            fi
        '';
    };
    home-manager.users.benton.home.file.".config/sway/wallpaper".source = ./wallpaper;

    home-manager.users.benton.xsession = {
        enable = true;
        pointerCursor = {
            package = flakes.nixpkgs.bibata-cursors;
            name = "Bibata_Classic";
            size = 48;
        };
    };
}