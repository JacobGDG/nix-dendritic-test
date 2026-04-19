{ lib, ... }:
{
  systems = [
    "aarch64-darwin"
    "x86_64-linux"
  ];
  den.default.nixos.system.stateVersion = "25.11";
  den.default.homeManager.home.stateVersion = "25.11";

  den.schema.user.classes = lib.mkDefault [ "homeManager" ];
}
