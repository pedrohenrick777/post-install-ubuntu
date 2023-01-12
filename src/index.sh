clear_screen() {
    clear
    echo "\n${PURPLE}Post-Install Linux\007${DEFAULT_COLOR}\n"
}

update_system() {
    echo "${RED}Update System${DEFAULT_COLOR}"
    (sudo apt-get -y update && sudo apt-get -y upgrade) >>$LOG 2>>$LOG
    echo "System updated!\n"
}

clear_screen
update_system 

sleep 2

clear_screen
echo "\n${RED}Setting terminal${BLUE}\n"

. $SRC_DIR/shell/zsh.sh

clear_screen
echo "\n${RED}Installing and setting apps${BLUE}\n"

. $SRC_DIR/tmux/tmux.sh
. $SRC_DIR/neovim/neovim.sh
. $SRC_DIR/cli-apps/apps.sh
