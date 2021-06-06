{ flakes, ... }: {
    home-manager.enable = true;

    vscode = {
        enable = true;
        package = flakes.nixpkgs.vscodium;
        extensions = [
            flakes.nixpkgs.vscode-extensions.bbenoist.Nix
        ];
    };
}