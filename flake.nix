{
    inputs = {
        nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
        home.url = "github:nix-community/home-manager";
        hardware.url = "github:NixOS/nixos-hardware";
        knock.url = "github:BentonEdmondson/knock";
        firefox-addons.url = "gitlab:rycee/nur-expressions?dir=pkgs/firefox-addons";
    };

    outputs = { self, ... }@flakes': let
        flakes = {
            nixpkgs = flakes'.nixpkgs.legacyPackages.x86_64-linux;
            lib = flakes'.nixpkgs.lib;
            home = flakes'.home.nixosModule;
            hardware = flakes'.hardware.nixosModules;
            knock = flakes'.knock.defaultPackage.x86_64-linux;
            firefox-addons = flakes'.firefox-addons.packages.x86_64-linux;
        };
    in {
        nixosConfigurations = {
            surface-pro-4 = flakes.lib.nixosSystem rec {
                system = "x86_64-linux";
                specialArgs = { inherit flakes; };
                modules = [
                    ./system
                    ./software
                    ./hardware/surface-pro-4
                ];
            };
        };
    };
}