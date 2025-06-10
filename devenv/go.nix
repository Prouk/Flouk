{ pkgs, ... }:
{
  pakcages = with pkgs; [
    go
    gopls
  ];
}
