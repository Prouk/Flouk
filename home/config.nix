{ ... }:
{
  xdg.enable = true;
  xdg.configFile."hypr" = {
    enable = true;
    source = "./hypr";
    recursive = true;
  };
}
