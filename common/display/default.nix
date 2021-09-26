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
                    invalid-password-text = it's called we do a little trolling
                    password-alignment = center
                    password-input-width = 12
                    [greeter-theme]
                    font = Source Code Pro
                '';
            };
        };
        windowManager.qtile.enable = true;
    };
}