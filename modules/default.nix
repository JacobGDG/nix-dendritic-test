{
  imports = [
    ./inputs.nix
  ];
  systems = [
    "aarch64-darwin"
    "x86_64-linux"
  ];
  #
  # flake-file.description = "A dendritic setup.";
}
