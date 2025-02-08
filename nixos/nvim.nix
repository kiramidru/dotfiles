{ pkgs, inputs, ... }:

{
  programs.neovim.enable = true;
  programs.neovim.defaultEditor = true;

  programs.nix-ld.enable = true;

  programs.nix-ld.libraries = with pkgs; [
    ansible-language-server
    lua-language-server
    rust-analyzer
    erlang-ls
    kotlin-language-server
    nil
    rubocop
    sqls
    terraform-ls
  ];
}
