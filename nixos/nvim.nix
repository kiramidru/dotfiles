{pkgs, ...}: {
  programs.neovim.enable = true;
  programs.neovim.defaultEditor = true;

  programs.nix-ld.enable = true;

  # LSPs
  programs.nix-ld.libraries = with pkgs; [
    ansible-language-server
    vscode-langservers-extracted
    lua-language-server
    rust-analyzer
    erlang-ls
    eslint
    eslint_d
    kotlin-language-server
    nil
    pyright
    rubocop
    sqls
    terraform-ls
  ];
}
