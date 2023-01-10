export DEFAULT_COLOR='\033[0m'
export PURPLE='\033[1;35m'
export RED='\033[0;31m'

export SRC_DIR="$(dirname '$0')/src"
export $(cat .env | xargs)

main() {
    echo -e "${PURPLE}Post-Install Linux${DEFAULT_COLOR}\n"

    echo -e "${RED}Configurando terminal${DEFAULT_COLOR}"
    bash "${SRC_DIR}/terminal/install.sh"

    
    echo -e "${RED}Configurando Neovim${DEFAULT_COLOR}"
    bash "${SRC_DIR}/neovim/install.sh"
}

main
