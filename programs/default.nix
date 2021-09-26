{ flakes, ... }: {
    imports = [ ./configs.nix ];

    users.users.benton.packages = [
        flakes.nixpkgs.firefox
        flakes.nixpkgs.blender
        flakes.nixpkgs.libreoffice
        flakes.nixpkgs.bitwarden
        flakes.nixpkgs.libsForQt5.kdenlive
        flakes.nixpkgs.element-desktop

        flakes.nixpkgs.foliate
        flakes.knock
        flakes.nixpkgs.newsflash

        flakes.nixpkgs.vscodium
        flakes.nixpkgs.git
        flakes.nixpkgs.fish
    ];
}