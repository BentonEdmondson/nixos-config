{ flakes, ... }: {
    services.xserver = {
        enable = true;
        displayManager = {
            defaultSession = "sway";
            lightdm.greeters.mini = {
                enable = true;
                user = "benton";
                extraConfig = builtins.readFile ./lightdm-mini.conf;
            };
        };
    };

    programs.sway = {
        enable = true;
    };
    home-manager.users.benton.home.file.".config/sway/config" = {
        source = ./sway-config.in;
        onChange = "sway reload";
    };

}