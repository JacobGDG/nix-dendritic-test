{ inputs, lib, ... }:
{
  imports = with inputs.flake-file.flakeModules; [
    default
    import-tree
  ];
  flake-file = {
    inputs = {
      flake-file.url = lib.mkDefault "github:vic/flake-file";
      flake-parts.url = "github:hercules-ci/flake-parts";
      nixpkgs.url = "github:nixos/nixpkgs/nixos-25.11";
      home-manager = {
        url = "github:nix-community/home-manager";
        inputs.nixpkgs.follows = "nixpkgs";
      };
    };
    outputs = "inputs: inputs.flake-parts.lib.mkFlake { inherit inputs; } (inputs.import-tree ./modules)";
  };
}
