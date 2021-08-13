{ flakes, ... }: [
    # browser
    flakes.nixpkgs.firefox
    # 3d modelling
    flakes.nixpkgs.blender
    # document editor
    flakes.nixpkgs.libreoffice
    # password manager
    flakes.nixpkgs.bitwarden
    # video editor
    flakes.nixpkgs.libsForQt5.kdenlive
    # text chatting
    flakes.nixpkgs.element-desktop

    # epub reader
    flakes.nixpkgs.foliate
    # acsm decryptor
    flakes.knock
    # rss feed
    flakes.nixpkgs.newsflash

    # text editor
    flakes.nixpkgs.vscodium
    # version control
    flakes.nixpkgs.git

    # cool text editor
    flakes.nixpkgs.cool-retro-term

    flakes.nixpkgs.nodePackages.bitwarden-cli
]