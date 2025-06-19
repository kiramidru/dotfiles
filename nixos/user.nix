{pkgs, ...}: {
  programs.zsh.enable = true;
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.kira = {
    isNormalUser = true;
    description = "Kira Midru";
    extraGroups = ["networkmanager" "wheel"];
    shell = pkgs.zsh;
    packages = with pkgs; [
      blender
      clickup
      discord
      godot
      obsidian
      qbittorrent
      spotify
      telegram-desktop
      vlc
      whatsapp-for-linux
    ];
  };
  programs.firefox.enable = true;

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;
}
