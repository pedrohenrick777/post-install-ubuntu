TMUX_DIR=$SRC_DIR/tmux

echo "Installing tmux"
sudo apt-get -y install tmux >>$LOG 2>>$LOG

mkdir -p $HOME/.tmux

TMUX_PLUGINS=$HOME/.tmux/plugins

# tmux-tpm
if [ -d $TMUX_PLUGINS ]; then
    rm -rf $TMUX_PLUGINS
fi
echo "Installig tmux plugin manager"
git clone https://github.com/tmux-plugins/tpm $TMUX_PLUGINS/tpm >>$LOG 2>>$LOG || exit 1
cp $TMUX_DIR/.tmux.conf $HOME