{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    fzf
    git
    kitty
    ripgrep
    starship
    stow
    unzip
    wget
    yazi
  ];
}
