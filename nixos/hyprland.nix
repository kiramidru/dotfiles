{ pkgs, ... }:
{
  # Hyprland
  services.displayManager.gdm = {
    enable = true;
    wayland = true;
  };
  services.xserver = {
    enable = true;
    excludePackages = with pkgs; [ xterm ]; # Remove Xterm
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
    eww
    hypridle
    hyprshot
    mpv
    playerctl
    polkit_gnome
    rofi-wayland
    swww
    waybar
    wl-clipboard
    wlogout
  ];
}
