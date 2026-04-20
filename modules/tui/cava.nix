{ lib, ... }:
{
  jk.cava.homeManager = {
    programs.cava = {
      enable = true;

      settings = {
        colour = {
          forground = lib.mkDefault "#FF2900";
        };
      };
    };
  };
}
