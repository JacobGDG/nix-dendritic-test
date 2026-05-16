{
  nixosHosts.erebor = {
    system = "x86_64-linux";
  };

  flake.modules.nixos."nixosConfigurations/erebor" = {
    networking.hostname = "erebor";

    system = {
      autoUpgrade.enable = false;
    };
  };
}
