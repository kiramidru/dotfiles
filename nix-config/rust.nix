{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    rustup
    taplo #toml formatter & lsp
    bacon
    evcxr #rust repl
  ];
}
