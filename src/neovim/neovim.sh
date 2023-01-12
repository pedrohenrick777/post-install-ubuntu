NVIM_DIR=$HOME/.config/nvim
NVIM_SRC=$SRC_DIR/neovim

echo "Uninstalling vim"
sudo apt-get remove -y vim vim-runtime >>$LOG 2>>$LOG

echo "Installing neovim"
sudo apt-get install -y neovim >>$LOG 2>>$LOG

echo "Installing vim-plug"
# vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim' >>$LOG 2>>$LOG

cp $NVIM_SRC/init.vim $NVIM_DIR
