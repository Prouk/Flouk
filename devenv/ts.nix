{ pkgs, ... }:
{
  packages = with pkgs; [
    typescript-language-server
    vscode-langservers-extracted
  ];
}
