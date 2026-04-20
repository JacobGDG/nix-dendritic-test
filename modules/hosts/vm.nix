{
  inputs,
  den,
  ...
}: {
  den.hosts.x86_64-linux.rhiod.users.jake = {};
  den.aspects.rhiod = {
    includes = [(den.provides.tty-autologin "jake")];

    nixos = {pkgs, ...}: {
      environment.systemPackages = [pkgs.hello];
    };
  };

  perSystem = {pkgs, ...}: {
    packages.vm = pkgs.writeShellApplication {
      name = "vm";
      text = let
        host = inputs.self.nixosConfigurations.rhiod.config;
      in ''
        ${host.system.build.vm}/bin/run-${host.networking.hostName}-vm "$@"
      '';
    };
  };
}
