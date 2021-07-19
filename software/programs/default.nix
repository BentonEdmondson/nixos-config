{ flakes, ... }: [
    # everyday stuff
    flakes.nixpkgs.firefox
    flakes.nixpkgs.thunderbird
    flakes.nixpkgs.blender
    flakes.nixpkgs.libreoffice
    flakes.nixpkgs.bitwarden

    # reading
    flakes.nixpkgs.foliate
    flakes.knock

    # development
    flakes.nixpkgs.etcher
    flakes.nixpkgs.git
    flakes.nixpkgs.gitg
    flakes.nixpkgs.vscodium

    # crypto
    flakes.nixpkgs.mycrypto
    flakes.nixpkgs.go-ethereum
]