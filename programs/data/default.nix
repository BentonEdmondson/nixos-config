{ flakes, ... }: {
    home-manager.users.benton = {
        xdg = {
	    dataFile = {
                "qutebrowser".source = ./qutebrowser;
                "qutebrowser".recursive = true; 
            };
	};
    };
}
