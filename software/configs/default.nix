{ inputs, ... }: {
    home-manager.enable = true;

    vscode = {
        enable = true;
        package = inputs.nixpkgs.vscodium;
        extensions = [
            inputs.nixpkgs.vscode-extensions.bbenoist.Nix
        ];
    };
}