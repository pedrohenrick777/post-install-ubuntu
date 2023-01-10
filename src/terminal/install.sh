# variaveis
TERM_DIR="${SRC_DIR}/zsh"

echo -e "${PURPLE}Instalando pacotes necessários${DEFAULT_COLOR}"
sudo apt-get install -y zsh tmux git

# zsh
echo -e "${PURPLE}Instalando zsh${DEFAULT_COLOR}"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.powerlevel10k || exit 1
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions || exit 1
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git /.zsh/zsh-syntax-highlighting || exit 1

# poetry
echo -e "${PURPLE}Instalando Poetry${DEFAULT_COLOR}"
curl -sSL https://install.python-poetry.org | python3 - || exit 1

# asdf
echo -e "${PURPLE}Instalando ASDF${DEFAULT_COLOR}"
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.2 || exit 1

# tmux-tpm
echo -e "${PURPLE}Instalando TMUX-TPM${DEFAULT_COLOR}"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm || exit 1

echo -e "${PURPLE}Configurando zsh && tmux${DEFAULT_COLOR}"
cp "${TERM_DIR}/.zshrc" ~/.zshrc
cp "${TERM_DIR}/.tmux.conf" ~/.tmux.conf

chsh -s /bin/zsh
