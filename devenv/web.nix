{ pkgs, ... }:
{
  packages = with pkgs; [
    tailwindcss_4
    tailwindcss-language-server
    typescript-language-server
    vscode-langservers-extracted
  ];
}
