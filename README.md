# dendritic-test

A learning project for experimenting with the [dendritic](https://github.com/vic/den) pattern in Nix — with the goal of building confidence before applying it to simplify management of a multi-device NixOS/home-manager config.

## Motivation

Traditional Nix configs tend to be split along tool boundaries: NixOS config lives in one place, home-manager config in another. When you have a concern that spans both — say, setting up a terminal environment — the relevant config is scattered.

This project experiments with **aspect-driven config**: all configuration for a given concern is grouped together in one place, regardless of whether it ends up in NixOS or home-manager. The dendritic pattern from `vic/den` makes this possible.

## Key tools

| Tool | Role |
|---|---|
| [`vic/den`](https://github.com/vic/den) | Provides the dendritic aspect/host/home schema |
| [`vic/import-tree`](https://github.com/vic/import-tree) | Auto-imports all `.nix` files under `./modules` into the flake |
| [`vic/flake-file`](https://github.com/vic/flake-file) | Generates `flake.nix` from declarative input specs in modules |
| [`hercules-ci/flake-parts`](https://github.com/hercules-ci/flake-parts) | Modular flake outputs |

The `flake.nix` is auto-generated — edit inputs via `modules/meta/inputs.nix` and regenerate with `just write-flake`.

## Usage

```sh
# Enter dev shell (nil LSP + alejandra formatter)
nix develop

# Regenerate flake.nix after changing inputs.nix
just write-flake

# Check the flake across all systems
just check

# Run the VM
nix run .#vm
```
