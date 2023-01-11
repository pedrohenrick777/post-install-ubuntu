# variaveis
TERM_DIR="${SRC_DIR}/zsh"

echo -e "${PURPLE}Instalando pacotes necessários${DEFAULT_COLOR}"
sudo apt-get install -y zsh tmux git

# zsh
echo -e "${PURPLE}Instalando zsh${DEFAULT_COLOR}"
if [ -d $HOME /.powerlevel10k ]; then
    rm -rf ~/.powerlevel10k
fi
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.powerlevel10k || exit 1
if [ -d ~/.zsh ]
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions || exit 1
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git /.zsh/zsh-syntax-highlighting || exit 1

# git
echo -e "${PURPLE}Instalando zsh${DEFAULT_COLOR}"
git config --global user.name "$GIT_USER"
git config --global user.email $GIT_EMAIL

# poetry
echo -e "${PURPLE}Instalando Poetry${DEFAULT_COLOR}"
curl -sSL https://install.python-poetry.org | python3 - || exit 1
$HOME/.local/bin/poetry config virtualenvs.in-project true

# asdf
echo -e "${PURPLE}Instalando ASDF${DEFAULT_COLOR}"
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.2 || exit 1



echo -e "${PURPLE}Configurando zsh && tmux${DEFAULT_COLOR}"
cp "${TERM_DIR}/.zshrc" ~
cp "${TERM_DIR}/.p10k.zsh" ~

chsh -s /bin/zsh