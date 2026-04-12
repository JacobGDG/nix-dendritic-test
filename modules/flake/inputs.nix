{ inputs, lib, ... }:
{
  imports = [
    inputs.flake-file.flakeModules.default
  ];
  flake-file = {
    inputs = {
      flake-file.url = lib.mkDefault "github:vic/flake-file";
      flake-parts.url = "github:hercules-ci/flake-parts";
      import-tree.url = "github:vic/import-tree";
      nixpkgs.url = "github:nixos/nixpkgs/nixos-25.11";
    };
    outputs = "inputs: inputs.flake-parts.lib.mkFlake { inherit inputs; } (inputs.import-tree ./modules)";
  };
}
