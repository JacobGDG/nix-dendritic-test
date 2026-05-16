{inputs, ...}: {
  flake-file = {
    inputs = {
      neovim.url = "git+ssh://git@github.com/JacobGDG/nvim.nix.git?shallow=1";
    };
  };

  jk.neovim = {
    homeManager = {pkgs, ...}: {
      nixpkgs.overlays = [inputs.neovim.overlays.default];
      home.packages = [pkgs.nvim-pkg];
    };
  };
}
