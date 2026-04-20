{
  jk.neovim = {
    homeManager = {pkgs, ...}: {
      home.packages = [pkgs.neovim];
    };
  };
}
