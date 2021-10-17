{ flakes, ... }: {
    imports = [ ./configs ];

    users.users.benton.packages = [
        # terminal
        flakes.nixpkgs.kitty
        flakes.nixpkgs.fish

        # ebooks
        flakes.nixpkgs.zathura

        # web
        (flakes.nixpkgs.firefox-wayland.override {
            cfg.enableTridactylNative = true;
        })
        flakes.nixpkgs.tridactyl-native

        # file browser
        flakes.nixpkgs.ranger

        # editor
        flakes.nixpkgs.neovim
        flakes.nixpkgs.vscodium

        # matrix client
        flakes.nixpkgs.nheko

        # bluetooth
        flakes.nixpkgs.bluedevil

        # utilities
        flakes.nixpkgs.gitless
        flakes.nixpkgs.git
        flakes.knock
        flakes.nixpkgs.xorg.xeyes
    ];
}