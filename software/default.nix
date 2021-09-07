{ flakes, ... }: {
    users.users.benton.packages = import ./programs { inherit flakes; };
    
    home-manager.users.benton = {
        #   home.packages = import ./programs { inherit flakes; };
        programs = (import ./configs { inherit flakes; }) // { home-manager.enable = true; };
    };
}