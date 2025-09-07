{ pkgs, ... }:
{
  networking.hostName = "kira"; # Define your hostname.

  # Enable networking
  networking.networkmanager.enable = true;

  environment.systemPackages = with pkgs; [
    # impala
  ];
}
