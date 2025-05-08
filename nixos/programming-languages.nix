{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
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
    # Kotlin
    kotlin
    ktor-cli
    # Lua
    lua
    # Node
    nodejs
    # Scala
    scala
  ];
}
