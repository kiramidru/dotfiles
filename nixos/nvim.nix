{pkgs, ...}: {
  programs.neovim.enable = true;
  programs.neovim.defaultEditor = true;

  programs.nix-ld.enable = true;

  # LSPs
  programs.nix-ld.libraries = with pkgs; [
    lua-language-server
    nil
    pyright
    sqls
  ];
}
