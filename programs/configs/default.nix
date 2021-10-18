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
        };

        xdg.configFile = {
            "kitty/kitty.conf".source = ./kitty.conf;
            "fish/config.fish".source = ./fish.fish;
            "zathura/zathurarc".source = ./zathura.conf;
            "qutebrowser/config.py".source = ./qutebrowser.py;
        };
    };
}
