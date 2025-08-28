{ config, ... }: {
  services.xserver.videoDrivers = [ "nvidia" ];

  nixpkgs.config.nvidia.acceptLicense = true;
  hardware.nvidia = {
    # Modesetting is required.
    modesetting.enable = true;
    powerManagement.enable = true;
    powerManagement.finegrained = false;

    # Use the NVidia open source kernel module
    open = true;

    # Enable the Nvidia settings menu,
    # accessible via `nvidia-settings`.
    nvidiaSettings = true;

    # Optionally, you may need to select the appropriate driver version for your specific GPU.
    package = config.boot.kernelPackages.nvidiaPackages.stable;
  };
}
