{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    hyprland
    wireplumber
    bluez
    bluez-utils
    btop
    networkmanager
    wl-clipboard
    python
    upower
    gvfs
    gtksourceview3
    libsoup
    power-profiles-daemon
    wallust
  ];
}
