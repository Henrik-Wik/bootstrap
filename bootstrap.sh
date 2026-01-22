sudo apt update && sudo apt upgrade -y

sudo apt install -y zsh
sRUNZSH=no CHSH=no sh -c \
  "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

curl -fsSL https://opencode.ai/install | zsh
