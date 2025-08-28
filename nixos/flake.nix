{
  description = "NixOS System Configuration";

  inputs = {
    # If you want to use the latest upstream version, I recommend using
    # branch "nixos-unstable" instead of "23.11" (the latest stable release).
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs =
    { nixpkgs, ... }:
    {
      nixosConfigurations = {
        # This should correspond to the hostname of the machine
        kira = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          modules = [
            ./ags.nix
            ./android.nix
            ./auto-upgrade.nix
            ./bootloader.nix
            ./configuration.nix
            # ./cyber.nix
            ./database.nix
            ./firewall.nix
            ./fonts.nix
            ./graphics.nix
            ./garbage.nix
            ./hardware-configuration.nix
            ./hyprland.nix
            ./internationalisation.nix
            ./keyboard.nix
            ./networking.nix
            ./nvidia.nix
            ./nvim.nix
            ./open-ssh.nix
            ./programming-languages.nix
            ./settings.nix
            ./sound.nix
            ./time.nix
            ./user.nix
            ./utils.nix
            ./virtualisation.nix
          ];
        };
      };
    };
}
