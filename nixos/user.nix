{pkgs, ...}: {
  programs.zsh.enable = true;
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.kira = {
    isNormalUser = true;
    description = "Kira Midru";
    extraGroups = ["networkmanager" "wheel"];
    shell = pkgs.zsh;
    packages = with pkgs; [
      ani-cli
      beeper
      blender
      clickup
      discord
      obsidian
      qbittorrent
      spotify
      godot_4
      telegram-desktop
      vlc
      wpsoffice
    ];
  };
  programs.firefox.enable = true;

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;
}
