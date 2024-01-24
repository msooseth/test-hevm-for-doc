{
  description = "HEVM for testing";

  inputs = {
    flake-utils.url = "github:numtide/flake-utils";
    nixpkgs.url = "github:nixos/nixpkgs";

    # tools
    hevm.url = "github:ethereum/hevm";
    foundry.url = "github:shazow/foundry.nix/monthly";
    /*halmos-src = { url = "github:a16z/halmos"; flake = false; };
    runlim-src = { url = "github:msooseth/runlim"; flake = false; };*/
  };

  outputs = { self, nixpkgs, flake-utils, hevm, foundry, }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in rec {
        devShell = pkgs.mkShell {
          packages = [
            # tools
            halmos
            hevm.packages.${system}.default
            foundry.defaultPackage.${system}
            pkgs.solc
          ];
        };
      });
}
