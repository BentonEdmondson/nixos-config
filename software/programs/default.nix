{ inputs, ... }: {
    programs.home-manager.enable = true;
    home.stateVersion = "21.05";
    home.packages = [

        # everyday stuff
        inputs.nixpkgs.firefox
        inputs.nixpkgs.thunderbird
        inputs.nixpkgs.blender
        #inputs.nixpkgs.zoom-us
        inputs.nixpkgs.libreoffice
        inputs.nixpkgs.bitwarden

        # development
        inputs.nixpkgs.etcher
        inputs.nixpkgs.git
        inputs.nixpkgs.vscodium

        # crypto
        inputs.nixpkgs.mycrypto
        inputs.nixpkgs.go-ethereum
    ];

    programs.vscode = {
        enable = true;
        package = inputs.nixpkgs.vscodium;
        extensions = [
            inputs.nixpkgs.vscode-extensions.bbenoist.Nix
        ];
    };
}
