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
	    neovim = {
	    	enable = true;
		plugins = [
	            flakes.nixpkgs.vimPlugins.vim-nix
	        ];
	    };
        };

        xdg = {
	    configFile = {
                "kitty".source = ./kitty;
		"kitty".recursive = true;

                "fish".source = ./fish;
		"fish".recursive = true;

                "zathura".source = ./zathura;
                "zathura".recursive = true;

                "qutebrowser".source = ./qutebrowser;
                "qutebrowser".recursive = true;

                "nvim".source = ./nvim;
                "nvim".recursive = true;

                "newsboat".source = ./newsboat;
                "newsboat".recursive = true; 
            };
	};
    };
}
