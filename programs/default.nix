{ flakes, ... }: {
    imports = [ ./configs.nix ];

    users.users.benton.packages = [
        flakes.nixpkgs.firefox-wayland
        flakes.nixpkgs.blender
        flakes.nixpkgs.libreoffice
        flakes.nixpkgs.bitwarden
        flakes.nixpkgs.libsForQt5.kdenlive
        flakes.nixpkgs.element-desktop
        flakes.nixpkgs.gparted
        flakes.nixpkgs.xorg.xeyes
        flakes.nixpkgs.ranger

        flakes.nixpkgs.zathura
        flakes.knock
        flakes.nixpkgs.newsflash

        flakes.nixpkgs.vscodium
        flakes.nixpkgs.git
        flakes.nixpkgs.alacritty
    ];
}