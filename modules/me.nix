{ den, ... }:
{
  den.aspects.jake = {
    includes = [
      den.provides.define-user
      den.provides.primary-user
      (den.provides.user-shell "zsh")

      den.aspects.neovim
    ];
    homeManager = { pkgs, ... }: {
      home.packages = [ 
        pkgs.htop
      ];
    };
  };
}
