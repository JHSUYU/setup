#!/bin/bash
setup_plugins() {
  sed -i 's/plugins=(git)/plugins=(\n    git\n    z\n    zsh-autosuggestions\n    zsh-syntax-highlighting\n)/' ~/.zshrc
  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
  git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
  source ~/.zshrc
}

echo ">>>>>>>>Installing zshrc plug-ins<<<<<<<<"
setup_plugins
echo ">>>>>>>>Installing zshrc plug-ins<<<<<<<<"

