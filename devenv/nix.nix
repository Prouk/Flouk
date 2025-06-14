{ pkgs-unst, ... }:
{
  packages = with pkgs-unst; [
    nil
    nixd
  ];
}
