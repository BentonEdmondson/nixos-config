{ flakes, ... }: {
    imports = [
        ./configs
	./data
    ];

    users.users.benton.packages = [
        # terminal
        flakes.nixpkgs.kitty
        flakes.nixpkgs.fish

        # ebooks
        flakes.nixpkgs.zathura

        # web
        (flakes.nixpkgs.qutebrowser.override { withPdfReader = false; })

        # file browser
        flakes.nixpkgs.ranger

        # rss reader
        flakes.nixpkgs.newsboat

        # editor
        flakes.nixpkgs.neovim
        flakes.nixpkgs.vscodium

        # matrix client
        flakes.nixpkgs.nheko

        # bluetooth
	flakes.nixpkgs.blueberry

        # utilities
        flakes.nixpkgs.tldr
        flakes.nixpkgs.gitless
        flakes.nixpkgs.git
        flakes.knock
        flakes.nixpkgs.xorg.xeyes
    ];
}
