{ pkgs, ... }:
{
  # Fonts
  fonts = {
    packages = with pkgs; [
      nerd-fonts.jetbrains-mono
      nerd-fonts.iosevka
      (stdenv.mkDerivation {
        pname = "tabler-icons-font";
        version = "latest";
        src = ./fonts;
        installPhase = ''
          mkdir -p $out/share/fonts/truetype
          cp $src/tabler-icons.ttf $out/share/fonts/truetype/
        '';
      })
    ];
  };
  environment.systemPackages = with pkgs; [
    bibata-cursors
  ];
}
