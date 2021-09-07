{ flakes, ... }: {
    home-manager.users.benton.xdg = {
        enable = true;
        userDirs = {
            enable = true;
            createDirectories = true;

            download = "\$HOME/tmp";
            documents = "\$HOME/docs";

            music = "\$HOME/media/music";
            pictures = "\$HOME/media/images";
            videos = "\$HOME/media/videos";

            desktop = "\$HOME/etal/desktop";
            templates = "\$HOME/etal/templates";
            publicShare = "\$HOME/etal/public";
        };
    };
}