{pkgs, lib, ...}: {
  # Fonts
  fonts = {
    packages = with pkgs; [
      nerd-fonts.jetbrains-mono
      nerd-fonts.noto
      nerd-fonts.iosevka
      nerd-fonts.zed-mono
    ];
  };
}
