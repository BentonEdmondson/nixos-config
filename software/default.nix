{ inputs, ... }: {
    imports = [
        inputs.home.nixosModules.home-manager {
            home-manager.useUserPackages = true;
            home-manager.extraSpecialArgs = { inherit inputs; };
            home-manager.users.benton = import ./programs;
        }
    ];
}