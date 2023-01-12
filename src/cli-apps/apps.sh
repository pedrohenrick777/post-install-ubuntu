echo "Installing ASDF deps"
sudo apt-get install make build-essential libssl-dev zlib1g-dev \
    libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
    libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev \
    libffi-dev liblzma-dev >>$LOG 2>&1

echo "Installing ASDF"
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.2 >>$LOG 2>&1 || exit 1

echo "Installing poetry"
curl -sSL https://install.python-poetry.org | python3 - >>$LOG 2>&1 || exit 1
$HOME/.local/bin/poetry config virtualenvs.in-project true

APPS=(
    "exa"
    "batcat"
    "neofetch"
    "bashtop"
)

for i in APPS; do
    echo Installing $i
    sudo apt-get install $i >>$LOG 2>&1
done
