{ self, ... }:
{
  imports = [
    ./configuration.nix
    ./modules
  ];

  environment.variables = {
    FLAKE_PATH = "/home/prouk/nvme/projects/Flouk";
  };
}
