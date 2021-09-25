{ flakes, config, ... }: {
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
    
    environment.variables = {
        # some programs will do defaults so I'll just tell all to do defaults
        XDG_CONFIG_HOME = "\$HOME/.config";
        XDG_CACHE_HOME = "\$HOME/.cache";
        XDG_DATA_HOME = "\$HOME/.local/share";
        XDG_STATE_HOME = "\$HOME/.local/state";

        # some programs need to be scolded
        # see https://wiki.archlinux.org/title/XDG_Base_Directory
        #GNUPGHOME = "\$HOME/.config/gnupg";
        #HISTFILE = "\$HOME/.local/share/bash/history";
        #VSCODE_PORTABLE = "\$HOME/.local/share/vscode";
    };
}