# zsh -- Tips for the ZSH
{:data-section="gnfb"}

## OPTIONS

`for i in $( echo *.pdf ) ; do {pdftk "$i" dump_data | grep -i numberofpages} ; done`
: Do something for each (non hidden) file in the current directory. Extremely useful for commands that do not support
more than one file as an argument (such as pdftk in this example). This specific example will print the number of pages
for each pdf in the current directory, modify it to your liking
