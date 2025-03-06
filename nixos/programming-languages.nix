{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    #Assembly
    asm-lsp
    # C
    gcc
    # Erlang
    erlang
    rebar3
    # Flutter
    flutter
    # Go
    go
    # Java
    jdk
    # Kotlin
    kotlin
    # Lua
    lua
    # Javascript
    nodejs
    pnpm
    # PHP
    php
    laravel
    phpPackages.composer
    # Python
    python314
    # Ruby
    ruby
    # Rust
    rustup
    evcxr
    # Scala
    scala
  ];
}
