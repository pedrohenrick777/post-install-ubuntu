#!/bin/bash

NVIM_DIR="${$HOME}/.config/nvim"
NVIM_SRC="${SRC_DIR}/neovim"


sudo apt-get remove -y vim vim-runtime

sudo apt-get install -y neovim

# vim-plug
echo -e "${PURPLE}Instalando VIM-PLUG${DEFAULT_COLOR}"
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

cp "${NVIM_SRC}/init.vim" "${NVIM_DIR}/init.vim"
