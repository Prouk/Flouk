{ pkgs, inputs, ... }:
let
  qs = inputs.quickshell.packages."x86_64-linux".default;
in
{
  packages = with pkgs; [
    qs
    kdePackages.qtdeclarative
  ];

  enterShell = ''
    export QMLLS_BUILD_DIRS=${pkgs.kdePackages.qtdeclarative}/lib/qt-6/qml/:${qs}/lib/qt-6/qml/
    export QML_IMPORT_PATH=$PWD/src
  '';
}
