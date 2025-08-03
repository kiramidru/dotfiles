{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    fzf
    git
    kitty
    postman
    ripgrep
    starship
    stow
    unzip
    wget
    yazi
    zip
  ];
}
