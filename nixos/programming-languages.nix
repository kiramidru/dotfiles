{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    #Assembly
    asm-lsp
    # C
    gcc
    # Elixir
    elixir
    # Erlang
    erlang
    rebar3
    # Flutter
    flutter
    # Go
    go
    # Java
    jdk
    maven
    # Javascript
    nodejs
    pnpm
    electron
    electron-bin
    # Kotlin
    kotlin
    ktor-cli
    # Lua
    lua
    # PHP
    php
    laravel
    phpPackages.composer
    # Rust
    rustup
    evcxr
    # Scala
    scala
  ];
}
