{ flakes, ... }: {
    home-manager.users.benton = {
        programs = {
            vscode = {
                enable = true;
                package = flakes.nixpkgs.vscodium;
                extensions = [
                    flakes.nixpkgs.vscode-extensions.arcticicestudio.nord-visual-studio-code
                    flakes.nixpkgs.vscode-extensions.bbenoist.nix
                ];
            };
            git = {
                enable = true;
                package = flakes.nixpkgs.git;
                userEmail = "bentonedmondson@gmail.com";
                userName = "benton";
            };
            firefox = {
                enable = true;
                #package = flakes.nixpkgs.firefox-wayland;
                extensions = [
                    # these need to be enabled manually after installation
                    flakes.firefox-addons.bitwarden
                    flakes.firefox-addons.ublock-origin
                    flakes.firefox-addons.sponsorblock
                ];
                profiles.benton.extraConfig = (builtins.readFile (flakes.arkenfox-userjs + "/user.js")) + ''
                    user_pref("extensions.pocket.enabled", false);
                    user_pref("signon.rememberSignons", false);
                    user_pref("browser.tabs.warnOnClose", false);
                '';
            };
        };
        home.file.".config/alacritty/alacritty.yml".source = ./alacritty-theme.yaml;
        home.file.".config/Element/config.json".source = ./element-theme.json;
        home.file.".config/zathura/zathurarc".source = ./zathura-theme.config;
    };
}
