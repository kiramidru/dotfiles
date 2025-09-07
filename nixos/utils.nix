{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    fzf
    git
    ripgrep
    starship
    stow
    unzip
    wget
  ];
}
