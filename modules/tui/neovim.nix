{ inputs, ... }:
{
  den.aspects.neovim = {
    homeManager = { pkgs, ... }: {
      home.packages = [ pkgs.neovim ];
    };
  };
}

