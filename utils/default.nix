{
    # this generates the data structure that is sent into modules as `flakes`
    input-schema = architecture: flakes: flakes // {
        nixpkgs = flakes.nixpkgs.legacyPackages.${architecture};
    };

}