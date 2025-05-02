# Dotfiles

Here are my dotfiles. Feel free to take anything you want from here.

## My Favorite Features

- `mg`, a custom zsh plugin that creates and reads custom man files. For more info, install it manually and run `mg -h`.
- A wallpaper roulette for KDE, using a simples systemd timer.

## Requirements

- Ruby-kramdown and fzf, for the `mg` plugin
- Zsh
- A [Nerd Font](https://www.nerdfonts.com/font-downloads) (such as Hack Nerd Font)

## Installing

Simply clone this repo, and run `install.sh`:
```
git clone https://github.com/Guilherme-Natan/dotfiles.git
cd dotfiles
./install.sh
```

> [!WARNING]
> This script will **rename** your existing `.zshrc` and `.zprofile` files, to `.zshrc.old` and `.zprofile.old`,
> respectively. It will only do this if you haven't installed Oh My Zsh yet.


Then, create `~/.extra`, a file where you will put variables spefically to your machine, such as:

- `scripts`, the absolute path to the directory you want to store scripts (example: `scripts=~/Scripts`). They will be
  avaible in your PATH.
- `WALLPAPERS`, the absolute path to the directory you want to store your wallpapers (example: `export
  WALLPAPERS=~/Wallpapers`). 
    - Do keep in mind that the wallpaper roulette is made specificaly for KDE, in a distro using the Systemd init
      system.

## TODO

- [ ] Add autocompletion capabilities to the mg plugin
