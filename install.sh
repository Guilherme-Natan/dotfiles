#!/bin/bash
source functions.sh

ZSH_CUSTOM=$HOME/.oh-my-zsh/custom
# Installs Oh My Zsh
if [ -z "$ZSH" ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi
# Installs the zsh syntax highlighting plugin
if [ ! -d "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting" ]; then
    git clone --depth 1 https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM}/plugins/zsh-syntax-highlighting
fi
# Installs Spaceship
if [ ! -d "$HOME/.zsh/spaceship" ]; then
    mkdir -p "$HOME/.zsh"
    git clone --depth=1 https://github.com/spaceship-prompt/spaceship-prompt.git "$HOME/.zsh/spaceship"
fi

link_all_files "home" "$HOME" "." # "." adds a dot to the beginning of every file in ./home

link_all_files "oh-my-zsh" "$ZSH_CUSTOM"
link_all_dirs "oh-my-zsh-plugins" "$ZSH_CUSTOM/plugins"

link_dir "man" "$HOME/.local/share/man"
