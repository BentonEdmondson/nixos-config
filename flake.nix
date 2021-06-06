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

    outputs = { self, ... }@flakes: let input-schema = (import ./utils).input-schema; in {
        nixosConfigurations = {
            surface-pro-4 = flakes.nixpkgs.lib.nixosSystem rec {
                system = "x86_64-linux";
                specialArgs = { flakes = input-schema system flakes; };
                modules = [
                    ./system
                    ./software
                    ./hardware/surface-pro-4
                ];
            };
        };
    };
}