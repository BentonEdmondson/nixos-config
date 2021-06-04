{ inputs, ... }: {
    imports = [
        inputs.home.nixosModules.home-manager {
            home-manager.useUserPackages = true;
            home-manager.extraSpecialArgs = { inherit inputs; };
            home-manager.users.benton = { inputs, ... }: {
                home.stateVersion = "21.05";
                home.packages = import ./programs { inherit inputs; };
                programs = import ./config { inherit inputs; };
                xdg = import ./xdg { inherit inputs; };
            };
        }
    ];
}