{ flakes, ... }: {
    # activate gnome (nixos.wiki/wiki/GNOME)
    services.xserver.enable = true;
    services.xserver.displayManager.gdm.enable = true;
    services.xserver.desktopManager.gnome.enable = true;

    # THEME!
    environment.systemPackages = [ flakes.nixpkgs.orchis ];
    environment.etc."xdg/gtk-3.0".text = "gtk-theme-name = \"Orchis\"";
}