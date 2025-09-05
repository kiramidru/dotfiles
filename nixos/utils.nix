{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    dig
    dnsmasq
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
