{ config, ... }:
{
  services.xserver.videoDrivers = [
    "modesetting"
    "nvidia"
  ];

  nixpkgs.config.nvidia.acceptLicense = true;
  hardware.nvidia = {
    # Modesetting is required.
    modesetting.enable = true;
    powerManagement.enable = true;

    # Use the NVidia open source kernel module
    open = false;

    # Enable the Nvidia settings menu,
    # accessible via `nvidia-settings`.
    nvidiaSettings = true;

    # Optionally, you may need to select the appropriate driver version for your specific GPU.
    package = config.boot.kernelPackages.nvidiaPackages.stable;

    prime = {
      sync.enable = true;
      # Bus ID of the NVIDIA GPU
      nvidiaBusId = "PCI:1:0:0";
      amdgpuBusId = "PCI:6:0:0";
    };
  };
}
