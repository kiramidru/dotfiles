{pkgs, ...}: {
  programs.hyprland = {
    enable = true;
    # Deprecated
    # nvidiaPatches = true;
    xwayland.enable = true;
  };

  xdg.portal = {
    enable = true;
    extraPortals = [pkgs.xdg-desktop-portal-gtk];
  };

  environment.systemPackages = with pkgs; [
    brightnessctl
    cava
    hypridle
    hyprlock
    hyprshot
    hyprsunset
    mpv
    networkmanager
    playerctl
    rofi-wayland
    swaynotificationcenter
    swww
    waybar
    wlogout
  ];
}
