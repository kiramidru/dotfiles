{...}: {
  hardware = {
    # Most wayland compositors need this
    nvidia.modesetting.enable = true;
  };
}
