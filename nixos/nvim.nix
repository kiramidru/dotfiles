{pkgs, ...}: {
  programs.neovim.enable = true;
  programs.neovim.defaultEditor = true;

  programs.nix-ld.enable = true;

  # LSPs
  programs.nix-ld.libraries = with pkgs; [
    ansible-language-server
    elixir-ls
    erlang-ls
    eslint
    eslint_d
    jdt-language-server
    kotlin-language-server
    lua-language-server
    nil
    pyright
    rust-analyzer
    sqls
    terraform-ls
  ];
}
