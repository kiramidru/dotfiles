{
  description = "Node JS flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/fbcf476f790d8a217c3eab4e12033dc4";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    {
      nixpkgs,
      flake-utils,
      ...
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in
      {
        # enables use of `nix shell`
        devShells.default = pkgs.mkShell {
          # add things you want in your shell here
          buildInputs = with pkgs; [
            nodejs
            typescript-language-server
            prettier
          ];
        };
      }
    );
}
