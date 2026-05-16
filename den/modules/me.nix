{
  den,
  jk,
  ...
}: {
  den.homes.x86_64-linux.jake = {};
  den.aspects.jake = {
    includes = [
      den.provides.define-user
      den.provides.primary-user
      (den.provides.user-shell "zsh")

      jk.tui
    ];
    homeManager = {pkgs, ...}: {
      home.packages = [
        pkgs.htop
      ];
      programs.cava.settings.colour.forground = "#FFFFFF";
    };
  };
}
