{pkgs, ...}: {
  environment.systemPackages = [pkgs.android-studio];
  services.udev.packages = [pkgs.android-udev-rules];
  programs.adb.enable = true;
}
