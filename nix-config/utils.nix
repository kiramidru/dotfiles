{ pkgs, inputs, ... }:

{
  environment.systemPackages = with pkgs; [
    fzf
    git
    nemo
    neofetch
    postman
    rebar3
    ripgrep
    starship
    stow
    zed-editor
  ];
}
