{pkgs, ...}: {
  environment.systemPackages = [pkgs.android-studio];
  programs.adb.enable = true;
  users.users.kira.extraGroups = ["kvm", "abdusers"];
}
