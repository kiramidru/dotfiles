{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    # AWS
    awsebcli
  ];
}
