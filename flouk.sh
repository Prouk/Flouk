declare -A color

color["red"]="\033[0;31m"
color["green"]="\033[0;32m"
color["blue"]="\033[0;34m"
color["yellow"]="\033[0;33m"
color["purple"]="\033[0;35m"
color["cyan"]="\033[0;36m"
color["white"]="\033[0;37m"
color["reset"]="\033[0m"

logo="┌─────────────────────────────────────────────────┐
│                                                 │
│                                                 │
│                                                 │
│      ${color["cyan"]}_______ _       _____  _     _ _    _${color["reset"]}      │
│     ${color["cyan"]}(_______) |     / ___ \| |   | | |  / )${color["reset"]}     │
│      ${color["cyan"]}_____  | |    | |   | | |   | | | / /${color["reset"]}      │
│     ${color["cyan"]}|  ___) | |    | |   | | |   | | |< < ${color["reset"]}      │
│     ${color["cyan"]}| |     | |____| |___| | |___| | | \ \ ${color["reset"]}     │
│     ${color["cyan"]}|_|     |_______)_____/ \______|_|  \_)${color["reset"]}     │
│                                                 │
│                                                 │
│           ${color["blue"]}Nixos flake made by Prouk${color["reset"]}             │
└─────────────────────────────────────────────────┘"
choices="Choose what you want to do:
  1)  Install flake
  2)  Update flake
  3)  Clean all but 2 lasts generations
  4)  Exit
  ( 1, 2, 3, default=1 )"

install_flake() {
    clear
    echo "Installing flake..."
    sudo nixos-rebuild switch --flake ./
}

update_flake() {
    clear
    echo "Updating flake..."
    sudo nix flake update
}

collect_garbage() {
    clear
    echo "Cleaning generations..."
    sudo nixos-collect-garbage -d +2
}

menu() {
    clear
    echo "$1"
    echo -e "$logo"
    echo -e "$choices"
    read user_choice
    case $user_choice in
        "") install_flake ;;
        1) install_flake ;;
        2) update_flake ;;
        3) collect_garbage ;;
        4) echo "Have a nice day" && exit ;;
        *) menu "Invalid choice" ;;
    esac
}

menu
