{ flakes, ... }: {
    # don't forget to set enable = true on the options!!

    vscode = {
        enable = true;
        package = flakes.nixpkgs.vscodium;
        extensions = [
            flakes.nixpkgs.vscode-extensions.bbenoist.Nix
        ];
    };

    git = {
        enable = true;
        userEmail = "bentonedmondson@gmail.com";
        userName = "benton";
    };
}