{ ... }:
{
  nix.settings = {
    experimental-features = [
      "nix-command"
      "flakes"
    ];
  };
  # programs.direnv.enable = true;
  environment.variables.EDITOR = "nvim"; # Default Editor
}
