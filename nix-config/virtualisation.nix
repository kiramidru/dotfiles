{ pkgs, ... }:

{
  # Enable docker.
  virtualisation.docker.enable = true;

  environment.systemPackages = with pkgs; [

  ];
}
