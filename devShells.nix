{
  packages.${user.system} = {
  };

  devShells.${user.system}.nix = devenv.lib.mkShell {
    inherit inputs pkgs;
    modules = [
      ./devenv/nix.nix
    ];
  };

  devShells.${user.system}.go = devenv.lib.mkShell {
    inherit inputs pkgs;
    modules = [
      ./devenv/go.nix
    ];
  };
}
