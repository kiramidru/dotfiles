{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    alsa-lib
    fzf
    git
    kitty
    pkg-config
    postman
    ripgrep
    scrcpy
    starship
    stow
    unzip
    yazi
  ];
}
