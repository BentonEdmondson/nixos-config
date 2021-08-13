{ flakes, ... }: {
    # don't forget to set enable = true on the options!!

    vscode = {
        enable = true;
        package = flakes.nixpkgs.vscodium;
        extensions = [
            flakes.nixpkgs.vscode-extensions.bbenoist.Nix
        ];
    };

    git = {
        enable = true;
        userEmail = "bentonedmondson@gmail.com";
        userName = "benton";
    };

    firefox = {
        enable = true;
        extensions = [
            # these need to be enabled manually after installation
            flakes.firefox-addons.bitwarden
            flakes.firefox-addons.ublock-origin
            flakes.firefox-addons.sponsorblock
        ];

        profiles.benton.settings = {
            # disable builtin password manager
            "signon.rememberSignons" = false;
            # dark theme
            "extensions.activeThemeID" = "firefox-compact-dark@mozilla.org";
            # don't warn about closing the last tab
            "browser.tabs.warnOnClose" = false;
            # don't show warning when going to about:config
            "browser.aboutConfig.showWarning" = false;
            # disable welcome screen
            "trailhead.firstrun.didSeeAboutWelcome" = true;
            # disable pocket extension
            "extensions.pocket.enabled" = false;
        };
    };
}