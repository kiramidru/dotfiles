{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    python313Packages.tensorflowWithCuda
  ];
}
