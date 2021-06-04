{
    inputs = {
        # package build instructions
        nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
        # program and program settings management
        home.url = "github:nix-community/home-manager";
        home.inputs.nixpkgs.follows = "nixpkgs";
        # system-specific hardware (e.g. touchscreen support)
        hardware.url = "github:nixos/nixos-hardware";
    };

    outputs = { self, ... }@inputs: {
        nixosConfigurations = {
            surface-pro-4 = inputs.nixpkgs.lib.nixosSystem {
                system = "x86_64-linux";
                specialArgs = {
                    inputs.home = inputs.home;
                    inputs.hardware = inputs.hardware;
                    inputs.nixpkgs = inputs.nixpkgs.legacyPackages."x86_64-linux";
                };
                modules = [
                    ./system
                    ./software
                    ./hardware/surface-pro-4
                ];
            };
        };
    };
}