{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    devenv.url = "github:cachix/devenv";
  };

  outputs = { self, nixpkgs, devenv, flake-utils, ... } @ inputs:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          inherit system;
        };
      in
      {

        devShells.default = devenv.lib.mkShell {
          inherit inputs pkgs;
          modules = [
            {
              name = "jmfv-portfolio";
              languages.javascript = {
                enable = true;
                package = pkgs.nodejs_20;
                corepack.enable = true;
              };
            }
          ];
        };
      });
}
