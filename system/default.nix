{ self, ... }:
{
  imports = [
    ./configuration.nix
    ./modules
  ];

  environment.variables = {
    FLAKE_PATH = "~/nvme/projects/Flouk";
  };
}
