{ pkgs, lib, ... }:

{
  # Fonts
  fonts.packages = [
    pkgs.jetbrains-mono
    pkgs.noto-fonts-color-emoji
  ] ++ builtins.filter lib.attrsets.isDerivation (builtins.attrValues pkgs.nerd-fonts);
}
