{ ... }: {
    # activate gnome (nixos.wiki/wiki/GNOME)
    services.xserver.enable = true;
    services.xserver.displayManager.gdm.enable = true;
    services.xserver.desktopManager.gnome.enable = true;

    # 12hr instead of 24hr clock
    #services.xserver.displayManager.lightdm.greeters.gtk.clock-format = "%e %b %Y, %I:%M %p";
}