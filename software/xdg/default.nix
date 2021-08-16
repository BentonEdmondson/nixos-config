{ flakes, ... }: {
    userDirs = {
        enable = true;
        createDirectories = true;

        download = "\$HOME/tmp";
        documents = "\$HOME/docs";

        music = "\$HOME/media/music";
        pictures = "\$HOME/media/images";
        videos = "\$HOME/media/videos";

        desktop = "\$HOME/etc/desktop";
        templates = "\$HOME/etc/templates";
        publicShare = "\$HOME/etc/public";
    };
}