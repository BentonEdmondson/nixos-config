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
                package = flakes.nixpkgs.git;
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
                    extraConfig = (builtins.readFile (flakes.pyllyukko-userjs + "/user.js")) + ''
                        // don't force private browsing (I want extensions working)
                        user_pref("browser.privatebrowsing.autostart", false);
                    '';
                };
            };
        };

        xdg.configFile = {
            "kitty/kitty.conf".source = ./kitty.conf;
            "fish/config.fish".source = ./fish.fish;
            "tridactyl/tridactylrc".source = ./tridactyl.conf;
            "tridactyl/themes/custom-theme.css".source = ./tridactyl.css;
            "zathura/zathurarc".source = ./zathura.conf;
            "qutebrowser/config.py".source = ./qute-style.py;
        };
    };
}
