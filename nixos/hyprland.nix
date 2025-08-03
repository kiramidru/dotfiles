{pkgs, ...}: {
  services.xserver = {
    enable = true;
    displayManager.gdm = {
        enable = true;
        wayland = true;
    };
    excludePackages = with  pkgs; [ xterm ]; # Remove Xterm
  }; 

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
    deadd-notification-center
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
