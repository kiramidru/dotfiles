{ pkgs, ... }:
{
  # Graphics
  hardware.graphics.enable = true;
  hardware.graphics.enable32Bit = true;
  hardware.enableRedistributableFirmware = true;
  boot.kernelModules = [
    "amdgpu"
    "nvidia"
    "nvidia_drm"
  ];
}
