{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    devenv.url = "github:cachix/devenv";
    rust-overlay.url = "github:oxalica/rust-overlay";
  };

  outputs = { self, nixpkgs, devenv, flake-utils, rust-overlay, ... } @ inputs:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          inherit system;
          overlays = [ (import rust-overlay) ];
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
              };
              packages = with pkgs; [
                yarn

                gcc
                (rust-bin.selectLatestNightlyWith (tc: tc.default.override {
                  extensions = [
                    "rust-analyzer"
                    "rust-src"
                    "clippy"
                  ];
                  targets = [ "wasm32-unknown-unknown" ];
                }))

                cargo-watch
                trunk
                leptosfmt
              ];
            }
          ];
        };
      });
}
