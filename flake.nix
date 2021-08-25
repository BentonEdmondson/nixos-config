{
    # sadly you cannot use let...in nor import to generate inputs
    # it appears they must be essentially literal
    inputs = {
        # package build instructions
        nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
        # program and program settings management
        home.url = "github:nix-community/home-manager";
        home.inputs.nixpkgs.follows = "nixpkgs";
        # system-specific hardware (e.g. touchscreen support)
        hardware.url = "github:NixOS/nixos-hardware";
        # knock command for ebooks
        knock.url = "github:BentonEdmondson/knock";
        knock.inputs.nixpkgs.follows = "nixpkgs";
        # firefox addons
        firefox-addons.url = "gitlab:rycee/nur-expressions?dir=pkgs/firefox-addons";
        firefox-addons.inputs.nixpkgs.follows = "nixpkgs";
    };

    outputs = { self, ... }@flakes: let utils = import ./utils; in {
        nixosConfigurations = {
            surface-pro-4 = flakes.nixpkgs.lib.nixosSystem rec {
                system = "x86_64-linux";
                specialArgs = utils.flakes-as-arg system flakes;
                modules = [
                    ./system
                    ./software
                    ./hardware/surface-pro-4
                    ({ ... }: { networking.hostName = "surface-pro-4"; })
                ];
            };
        };
    };
}