# zsh -- Tips for the ZSH
{:data-section="gnfb"}

## EXAMPLES

`for file in ./*.txt ; do cat "$file" ; done`
: Do something for each (non hidden) file in the current directory. Extremely useful for commands that do not support
more than one file as an argument.
