{ ... }:
{
  # Autoupgrade
  system.autoUpgrade = {
    enable = true;
    operation = "switch";
    flake = "~/dotfiles/nixos";
    flags = [
      "--update-input"
      "nixpkgs"
      "--update-input"
      "rust-overlay"
      "--commit-lock-file"
    ];
    dates = "weekly";
    # channel = "https://nixos.org/channels/nixos-unstable";
  };
}
