{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    fzf
    git
    kitty
    neofetch
    postman
    ripgrep
    scrcpy
    starship
    stow
    unzip
    yazi
    zed-editor
  ];
}
