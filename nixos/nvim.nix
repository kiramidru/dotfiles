{ pkgs, ... }:
{
  programs.neovim.enable = true;
  programs.neovim.defaultEditor = true;

  programs.nix-ld.enable = true;

  # LSPs
  programs.nix-ld.libraries = with pkgs; [
    # Lua
    lua-language-server
    stylua

    # Nix
    nil
    nixfmt
  ];

  environment.systemPackages = with pkgs; [
    # Lua
    lua-language-server
    stylua

    # Nix
    nil
    nixfmt
  ];
}
