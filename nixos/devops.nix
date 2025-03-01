{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    awsebcli
  ];
}
