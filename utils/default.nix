{
    # this generates the data structure that is sent into modules as `flakes`
    flakes-as-arg = architecture: flakes: {
        flakes = flakes // {
            nixpkgs = flakes.nixpkgs.legacyPackages.${architecture};
            knock = flakes.knock.defaultPackage.${architecture};
        };
    };
}