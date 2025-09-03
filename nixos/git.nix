{ pkgs, ... }:
{
  # Git
  programs.git = {
    enable = true;
    userName = "Kira Midru";
    userEmail = "kirubelmidru@gmail.com";

    lfs.enable = true;
    extraConfig = {
      credential.helper = "${pkgs.git.override {
        withLibsecret = true;
      }}";
    };
  };
}
