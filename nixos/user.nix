{ pkgs, ... }: {
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.kira = {
    isNormalUser = true;
    description = "Kira Midru";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.zsh;
    packages = with pkgs; [
      blender
      bluemail
      clickup
      discord
      google-chrome
      inkscape
      obsidian
      qbittorrent
      spotify
      telegram-desktop
      todoist-electron
      unityhub
      whatsapp-for-linux
    ];
  };

  programs.firefox.enable = true;
  programs.zsh.enable = true;
}
