{ pkgs, ... }:

{
  programs.hyprland = {
    enable = true;
    # Deprecated
    # nvidiaPatches = true;
    xwayland.enable = true;
  };

  xdg.portal = {
    enable = true;
    extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
  };

  environment.systemPackages = with pkgs; [
    brightnessctl
    cava
    hyprcursor
    hypridle
    hyprlock
    hyprshot
    hyprsunset
    kitty
    mpv
    networkmanager
    playerctl
    rofi-wayland
    scrcpy
    swaylock
    swaynotificationcenter
    swww
    waybar
    wlogout
  ];
}
