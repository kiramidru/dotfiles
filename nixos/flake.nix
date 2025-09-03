{
  description = "NixOS System Configuration";

  inputs = {
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
            ./laptop.nix
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
