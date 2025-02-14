{pkgs, ...}: {
  programs.adb.enable = true;
  users.users.kira.extraGroups = ["adbusers"];
  config.android_sdk.accept_license = true;
  environment.systemPackages = [pkgs.android-studio];
  services.udev.packages = [pkgs.android-udev-rules];
}
