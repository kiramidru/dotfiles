{ pkgs, ... }: {
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
    cava
    hypridle
    hyprshot
    hyprsunset
    mpv
    networkmanager
    playerctl
    rofi-wayland
    scrcpy
    swww
    waybar
    wl-clipboard
    wlogout
  ];
}
