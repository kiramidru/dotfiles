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
    maven
    # Javascript
    nodejs
    pnpm
    electron
    electron-bin
    # Kotlin
    kotlin
    # Lua
    lua
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
