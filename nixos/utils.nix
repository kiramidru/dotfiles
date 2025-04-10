{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    fzf
    git
    kitty
    postman
    ripgrep
    scrcpy
    starship
    stow
    unzip
    yazi
  ];
}
