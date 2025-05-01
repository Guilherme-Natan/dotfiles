# glob -- Find patterns in the name of files
{:data-section="gnfb"}

## EXAMPLES

To use the following commands, set `shopt -s globstar` in your `.bashrc` (for bash), or `setopt extended_glob` in your
`.zshrc` (for zsh)

`ls **/*.txt` 
: Shows every file that ends with .txt, *recursively*, beggining at the current directory

The following globs are written using zsh syntax, where you need to put `setopt extended_glob` in your `.zshrc` for them
to work.

`ls *.(png|jpg|jpeg)` 
: Shows every file with a .png, .jpg or .jpeg extension

`ls -dF ^*.pdf`
: Shows every file without a .pdf extesion. The `-d` flag is important to not "enter" the directories (since they
aren't pdfs), and `-F` will place a */* at the end of every directory name

`ls -dF ^*.(png|jpg)`
: Shows every file without a .png or .jpg extension

The following globs are equivalent to the ones above, but written using bash syntax. You'll need to put `shopt -s
extglob` in your `.bashrc` for them to work.

`ls @(*.png|*.jpg|*jpeg)`

`ls -dF !(*.pdf)`

`ls -dF !(*.png|*.jpg)`


## DICAS

- If you need to use one of those extended globs in a script, put those `shopt` or `setopt` options **inside** your
  script
