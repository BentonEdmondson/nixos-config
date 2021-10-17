{ flakes, ... }: {
    home-manager.users.benton = {
        programs = {
            vscode = {
                enable = true;
                package = flakes.nixpkgs.vscodium;
                extensions = [
                    flakes.nixpkgs.vscode-extensions.bbenoist.nix
                ];
            };
            git = {
                enable = true;
                package = flakes.nixpkgs.gitless;
                userEmail = "bentonedmondson@gmail.com";
                userName = "benton";
            };
            firefox = {
                enable = true;
                #package = flakes.nixpkgs.firefox-wayland;
                extensions = [
                    # these need to be enabled manually after installation
                    flakes.firefox-addons.tridactyl
                    flakes.firefox-addons.bitwarden
                    flakes.firefox-addons.ublock-origin
                    flakes.firefox-addons.sponsorblock
                ];
                profiles.benton = {
                    extraConfig = (builtins.readFile (flakes.arkenfox-userjs + "/user.js")) + ''
                        user_pref("extensions.pocket.enabled", false);
                        user_pref("signon.rememberSignons", false);
                        user_pref("browser.tabs.warnOnClose", false);
                        // enable userChrome.css
                        user_pref("toolkit.legacyUserProfileCustomizations.stylesheets", true);
                    '';
                };
            };
        };

        xdg.configFile = {
            "kitty/kitty.conf".source = ./kitty.conf;
            "fish/config.fish".source = ./fish.fish;
            "tridactyl/tridactylrc".source = ./tridactyl.conf;
            "tridactyl/themes/gruv.css".source = ./tridactyl.css;
        };
    };
}
