{
  perSystem = {pkgs, ...}: {
    devShells.default = pkgs.mkShell {
      name = "dendritic-devShell";
      packages = with pkgs; [
        nil
        alejandra
      ];
      shellHook = ''
        echo "Hello shelly!"
      '';
    };
  };
}
