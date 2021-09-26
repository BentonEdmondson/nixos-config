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
                userEmail = "bentonedmondson@gmail.com";
                userName = "benton";
            };
        };
        home.file.".config/alacritty/alacritty.yml".source = ./alacritty-theme.yaml;
        home.file.".config/Element/config.json".source = ./element-theme.json;
        home.file.".config/zathura/zathurarc".source = ./zathura-theme.config;
    };
}
