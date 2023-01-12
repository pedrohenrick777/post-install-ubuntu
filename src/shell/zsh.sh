ZSH_PLUGINS=$HOME/.zsh
SHELL_DIR=$SRC_DIR/shell

echo "Installing ZSH"
sudo apt-get install -y zsh

if [ -d $HOME/.powerlevel10k ]; then
    rm -rf ~/.powerlevel10k
fi

echo "Installing powerlevel10k"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.powerlevel10k || exit 1

if [! -d $ZSH_PLUGINS ]; then
    mkdir $ZSH_PLUGINS
fi

if [ -d $ZSH_PLUGINS/zsh-autosuggestions ]; then
    rm -rf $ZSH_PLUGINS/zsh-autosuggestions
fi

echo "Installing zsh-autosuggestions"
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_PLUGINS/zsh-autosuggestions || exit 1

if [ -d $ZSH_PLUGINS/zsh-syntax-highlighting ]; then
    rm -rf $ZSH_PLUGINS/zsh-syntax-highlighting
fi

echo "Installing zsh-syntax-highlighting"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_PLUGINS/zsh-syntax-highlighting || exit 1

echo "Copying files"
cp $SHELL_DIR/.zshrc $HOME
cp $SHELL_DIR/.p10k.zsh $HOME

echo "Setting ZSH as default shell"
chsh -s /bin/zsh
