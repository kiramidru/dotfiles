{ pkgs, ... }:
{
  # Devops
  environment.systemPackages = with pkgs; [
    # AWS
    awsebcli
  ];
}
