{ pkgs, ... }:

{
  programs.zsh.enable = true;
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.kira = {
    isNormalUser = true;
    description = "Kira Midru";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.zsh;
    packages = with pkgs; [
      ani-cli
      beeper
      blender
      clickup
      discord
      firefox-devedition
      obsidian
      qbittorrent
      spotify
      godot_4
      telegram-desktop
      vlc
      wpsoffice
      zathura
    ];
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;
}
