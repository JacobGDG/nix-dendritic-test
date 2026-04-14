{ inputs, lib, ... }:
{
  imports = [
    # inputs.den.flakeModules.dendritic
    inputs.flake-file.flakeModules.dendritic
  ];
  flake-file = {
    inputs = {
      den.url = "github:vic/den";
      flake-file.url = lib.mkDefault "github:vic/flake-file";
      home-manager = {
        url = "github:nix-community/home-manager";
        inputs.nixpkgs.follows = "nixpkgs";
      };
      nixpkgs.url = "github:nixos/nixpkgs/nixos-25.11";
    };
    outputs = "inputs: inputs.flake-parts.lib.mkFlake { inherit inputs; } (inputs.import-tree ./modules)";
  };
}
