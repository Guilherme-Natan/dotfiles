#!/bin/bash
source functions.sh

ZSH_CUSTOM=$HOME/.oh-my-zsh/custom

# Sets zsh as the default shell
chsh -s $(which zsh)

# Installs Oh My Zsh
if [ -z "$ZSH" ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    mv ~/.zshrc ~/zshrc.old
    mv ~/.zprofile ~/zprofile.old
fi
# Installs the zsh syntax highlighting plugin
if [ ! -d "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting" ]; then
    git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting.git "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting"
fi
# Installs Powerlevel10k zsh theme
if [ ! -d "$ZSH_CUSTOM/themes/powerlevel10k" ]; then
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$ZSH_CUSTOM/themes/powerlevel10k"
fi

link_all_files "home" "$HOME" "." # "." adds a dot to the beginning of every file in ./home

link_all_files "oh-my-zsh" "$ZSH_CUSTOM"
link_all_dirs "oh-my-zsh-plugins" "$ZSH_CUSTOM/plugins"

link_dir "nvim" "$HOME/.config/nvim"

link_dir "man" "$HOME/.local/share/man"

link_all_files "kitty" "$HOME/.config/kitty"

link_all_files "systemd" "$HOME/.config/systemd/user"

# Installs firefox config files, only if it is installed
if [ -d "$HOME/.mozilla/firefox" ]; then
    # Gets default-release profile directory
    profile=$(awk '/^Path=.*default-release$/' $HOME/.mozilla/firefox/profiles.ini | sed 's|Path=\(.*default-release\)|\1|')
    profile="$HOME/.mozilla/firefox/$profile"
fi
if [ -n "$profile" ]; then
    link_all_files "firefox" "$profile"
    link_all_dirs "firefox" "$profile"
fi

