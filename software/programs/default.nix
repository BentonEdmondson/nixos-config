{ pkgs, ... }: {
    programs.home-manager.enable = true;
    home.stateVersion = "21.05";
    home.packages = [

        # everyday stuff
        pkgs.firefox
        pkgs.thunderbird
        pkgs.blender
        #pkgs.zoom-us
        pkgs.libreoffice
        pkgs.bitwarden

        # development
        pkgs.etcher
        pkgs.git

        # crypto
        pkgs.mycrypto
        pkgs.go-ethereum
    ];

    programs.vscode = {
        enable = true;
        package = pkgs.vscodium;
        extensions = [
            pkgs.vscode-extensions.bbenoist.Nix
        ];
    };
}
