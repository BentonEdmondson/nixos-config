# this generates the data structure that is sent into modules as `flakes`
architecture: flakes: flakes // {
    nixpkgs = nixpkgs.legacyPackages.${architecture};
}