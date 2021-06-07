{ flakes, ... }: {
    vscode = {
        enable = true;
        package = flakes.nixpkgs.vscodium;
        extensions = [
            flakes.nixpkgs.vscode-extensions.bbenoist.Nix
        ];
    };
}