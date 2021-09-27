{ flakes, ... }: {
    services.xserver = {
        enable = true;
        displayManager = {
            defaultSession = "none+qtile";
            lightdm.greeters.mini = {
                enable = true;
                user = "benton";
                extraConfig = ''
                    [greeter]
                    show-password-label = false
                    show-input-cursor = false
                    password-input-width = 15
                    invalid-password-text = fuck you!

                    [greeter-theme]
                    background-image = ""
                    background-color = "#2e3440"

                    password-character = 0
                    password-background-color = "#2e3440"
                    password-border-color = "#3b4252"
                    password-border-width = 8px
                    layout-space = 15
                    password-border-radius = 0
                    
                    window-color = "#434c5e"
                    border-width = 0
                    
                    # error stuff
                    font = Source Code Pro
                    font-size = 35px
                    font-weight = normal
                    error-color = "#bf616a"
                '';
            };
        };
        windowManager.qtile.enable = true;
    };
    home-manager.users.benton.xsession = {
        enable = true;
        pointerCursor = {
            package = flakes.nixpkgs.bibata-cursors;
            name = "Bibata_Classic";
            size = 48;
        };
    };

    home-manager.users.benton.home.file.".config/qtile/config.py" = {
        source = ./qtile-config.py;
        onChange = "qtile cmd-obj -o cmd -f restart";
    };
}