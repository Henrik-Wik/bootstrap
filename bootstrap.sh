sudo apt update && sudo apt upgrade -y
sudo apt install -y zsh curl git

RUNZSH=no CHSH=no sh -c \
  "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

zsh -c "curl -fsSL https://opencode.ai/install | zsh"
