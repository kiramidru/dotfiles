{...}: {
  nix.settings = {
    experimental-features = ["nix-command" "flakes"];
  };
  programs.direnv.enable = true; # Shell environment management
  environment.variables.EDITOR = "nvim"; # Default Editor
}
