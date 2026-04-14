write-flake:
  nix run .#write-flake --show-trace

check:
  nix flake check --show-trace --all-systems
