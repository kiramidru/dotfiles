{pkgs, ...}: {
  programs.neovim.enable = true;
  programs.neovim.defaultEditor = true;

  programs.nix-ld.enable = true;

  # LSPs
  programs.nix-ld.libraries = with pkgs; [
    ansible-language-server
    erlang-ls
    eslint
    eslint_d
    kotlin-language-server
    lua-language-server
    nil
    vimPlugins.phpactor
    pyright
    rubocop
    rust-analyzer
    sqls
    terraform-ls
  ];
}
