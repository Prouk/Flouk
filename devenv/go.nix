{ pkgs-unst, ... }:
{
  packages = with pkgs-unst; [
    delve
    go
    gopls
    tailwindcss_4
    tailwindcss-language-server
    templ
    vscode-langservers-extracted
  ];
}
