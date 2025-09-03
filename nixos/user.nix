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
      bluemail
      clickup
      discord
      gimp3
      google-chrome
      inkscape
      obsidian
      postman
      qbittorrent
      spotify
      telegram-desktop
      todoist-electron
      unityhub
      waydroid
      yacreader
    ];
  };

  programs.firefox.enable = true;
  programs.zsh.enable = true;
}
