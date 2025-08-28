{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    cloudflared
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
