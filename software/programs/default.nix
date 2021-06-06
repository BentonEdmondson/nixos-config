{ inputs, ... }: [
    # everyday stuff
    inputs.nixpkgs.firefox
    inputs.nixpkgs.thunderbird
    inputs.nixpkgs.blender
    inputs.nixpkgs.libreoffice
    inputs.nixpkgs.bitwarden

    # development
    inputs.nixpkgs.etcher
    inputs.nixpkgs.git
    inputs.nixpkgs.vscodium

    # crypto
    inputs.nixpkgs.mycrypto
    inputs.nixpkgs.go-ethereum
]