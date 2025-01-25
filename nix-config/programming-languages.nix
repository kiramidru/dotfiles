{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    erlang
    gcc
    go
    jdk
    lua
    nodejs
  ];
}
