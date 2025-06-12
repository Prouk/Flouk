{ pkgs, ... }:
{
  packages = with pkgs; [
    delve
    go
    gopls
    tailwindcss_4
    tailwindcss-language-server
    templ
    vscode-langservers-extracted
  ];
}
