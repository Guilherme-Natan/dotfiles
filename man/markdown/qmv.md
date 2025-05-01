# qmv -- Move/rename files using your text editor
{:data-section="gnfb"}

## EXAMPLES

`qmv -f do` or `qrename` (alias)
: Gets every non hidden files in the current directory, in a single column, to move or (likely) rename them.

`qrename *.md`
: Gets every file ending with `.md` in the current directory

`qrename **/*md`
: Gets, recursively, every file ending with `.md`, in the current directory, and in every subdirectory.

`qrename -a`
: Includes hidden files to rename
