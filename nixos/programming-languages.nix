{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    # C
    gcc
    # Erlang
    erlang
    rebar3
    # Go
    go
    # Kotlin
    kotlin
    # Lua
    lua
    # Javascript
    nodejs
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
