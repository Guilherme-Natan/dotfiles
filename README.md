# Dotfiles

Here are my dotfiles. Feel free to take anything you want from here.

## Requirements

- Zsh
- A [Nerd Font](https://www.nerdfonts.com/font-downloads) (such as Hack Nerd Font)

## Installing

Simply clone this repo, and run `install.sh`:
```
git clone https://github.com/Guilherme-Natan/dotfiles.git
cd dotfiles
./install.sh
```

Then, create `~/.extra`, a file where you will put variables spefically to your machine:

- `scripts`, the absolute path to the directory you want to store scripts (example: `scripts=~/Scripts`). They will be
  avaible in your PATH (that is, if you put a `my_script` file there, you can run it from whatever directory you want,
  by simply running `my_script`).
