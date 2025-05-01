# file-rename -- Modify file names via regex
{:data-section="gnfb"}

## COMMAND STRUCTURE

`file-rename 's/*old*/*new*/g' *glob*`

## EXAMPLES

`file-rename 's#\.tex$#.txt#g' \*.tex`
: Renames every .tex file to .txt

`file-rename -n 's/*old*/*new*/g' *glob*`
: Shows how each filename will be renamed, without actually renaming them. Useful for testing.

`file-rename 's|\.txt|.tex|g' \*\*/\*.txt`
: Renames, recursively, every .tex file to .txt. You will need to enable globstar or extended_glob for this to work (run
`mg glob` for more info)

## PERL REGEX
This program uses "Perl flavored" regex. Some of its features:

- Capture Groups are delimited by ( and ), and their substitutions are like \1, \2, etc
- For whitespaces, use a whitespace itself (not `\s` like some other flavors)
