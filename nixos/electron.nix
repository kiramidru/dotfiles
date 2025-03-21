{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    xorg
    xorg.libX11
    libgtk-3-0
    libnss3
    openbox
    libatk-adaptor
  ];
}
