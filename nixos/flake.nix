{
  description = "NixOS System Configuration";

  inputs = {
    # If you want to use the latest upstream version, I recommend using
    # branch "nixos-unstable" instead of "23.11" (the latest stable release).
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs = {
    self,
    nixpkgs,
  }: {
    nixosConfigurations = {
      # This should correspond to the hostname of the machine
      kira = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./android.nix
          ./auto-upgrade.nix
          ./bootloader.nix
          ./cascadeur.nix  
          ./configuration.nix
          ./cyber.nix
          ./database.nix
          ./disable-nvidia.nix
          ./firewall.nix
          ./fonts.nix
          ./garbage.nix
          ./gnome.nix
          ./graphics.nix
          ./hardware-configuration.nix
          ./hyprland.nix
          ./internationalisation.nix
          ./keyboard.nix
          ./networking.nix
          # ./nvidia.nix
          ./nvim.nix
          ./open-ssh.nix
          ./printing.nix
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
