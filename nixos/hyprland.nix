{ pkgs, ... }:
{
  # Hyprland
  services.displayManager.gdm = {
    enable = true;
    wayland = true;
  };

  # services.xserver = {
  # enable = true;
  # excludePackages = with pkgs; [ xterm ]; # Remove Xterm
  # };

  environment.variables = {
    XCURSOR_THEME = "Bibata-Original-Ice";
    XCURSOR_SIZE = "24";
  };

  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  xdg.portal = {
    enable = true;
    extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
  };

  environment.systemPackages = with pkgs; [
    brightnessctl
    btop
    eww
    foot
    grim
    mpv
    networkmanager_dmenu
    pavucontrol
    playerctl
    polkit_gnome
    slurp
    swappy
    swayidle
    swaylock-effects
    swww
    rofi-wayland
    waybar
    wl-clipboard
    wlogout
    wmctrl
    yazi
  ];
}
