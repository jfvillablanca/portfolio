{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    devenv.url = "github:cachix/devenv";
  };

  outputs = {
    self,
    nixpkgs,
    devenv,
    flake-utils,
    ...
  } @ inputs:
    flake-utils.lib.eachDefaultSystem (system: let
      pkgs = import nixpkgs {
        inherit system;
      };

      tex = pkgs.texlive.combine {
        inherit (pkgs.texlive) scheme-small moderncv lato fontawesome enumitem fontaxes;
      };
    in {
      devShells.default = devenv.lib.mkShell {
        inherit inputs pkgs;
        modules = [
          {
            name = "jmfv-portfolio";
            languages = {
              javascript.enable = true;
              nix.enable = true;
            };
            packages = with pkgs; [
              yarn

              alejandra
              entr
              just

              tex
            ];
          }
        ];
      };
    });
}
