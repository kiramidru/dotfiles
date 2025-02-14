# Taken from https://github.com/NixOS/nixpkgs/issues/81418
{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
  ];
}
