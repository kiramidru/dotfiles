{pkgs, ...}: {
  programs.neovim.enable = true;
  programs.neovim.defaultEditor = true;

  programs.nix-ld.enable = true;

  # LSPs
  programs.nix-ld.libraries = with pkgs; [
    ansible-language-server
    lua-language-server
    rust-analyzer
    erlang-ls
    kotlin-language-server
    nil
    pyright
    rubocop
    sqls
    terraform-ls
  ];
}
