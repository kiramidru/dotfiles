{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    # C
    gcc
    # Java
    jdk
  ];
}
