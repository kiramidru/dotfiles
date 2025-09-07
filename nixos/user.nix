{ pkgs, ... }:
{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.kira = {
    isNormalUser = true;
    description = "Kira Midru";
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
    shell = pkgs.zsh;
    packages = with pkgs; [
      blender
      clickup
      discord
      gimp3
      google-chrome
      inkscape
      obsidian
      postman
      qbittorrent
      telegram-desktop
      todoist-electron
      unityhub
    ];
  };

  programs.firefox.enable = true;
  programs.zsh.enable = true;
}
