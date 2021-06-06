{ flakes, ... }: {
    imports = [
        flakes.home.nixosModules.home-manager {
            home-manager.useUserPackages = true;
            home-manager.users.benton = { ... }: {
                home.stateVersion = "21.05";
                home.packages = import ./programs { inherit flakes; };
                programs = import ./configs { inherit flakes; };
                xdg = import ./xdg { inherit flakes; };
            };
        }
    ];
}