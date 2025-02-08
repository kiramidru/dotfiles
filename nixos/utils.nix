{ pkgs, inputs, ... }:

{
  environment.systemPackages = with pkgs; [
    fzf
    git
    kitty
    neofetch
    postman
    ripgrep
    starship
    stow
    unzip
    yazi
    zed-editor
  ];
}
