# awk -- Process text
{:data-section="gnfb"}

## ESSENCE

`awk` works as follows: it goes line by line, looking for an event. When it finds it, it executes the command.

`awk` generally follows these structures:

awk '*event* {*command*}' file \\
command_cli | awk '*event* {*command*}'

*event*, in most cases, will be a regex pattern, either in the form `/pattern/` (executes the command if the pattern
matches), or `!/pattern/` (executes if it does not match).

*command*, in most cases, will be *print*, followed by some variable. Some of them include:

- `$0` is the entire matching line
- `$n` where n is an integer. It's the n-th field of the current line. By default, fields are words (characters
  separated by whitespaces), but you can change that using the FS variable.
- `FS` defines the field delimiter. For example, if your file is a CSV, it might be good to set this to `,`. You can do
  this using the `-F","` flag.
- `NF` is the number of fields in the current line. `$NF` will be the last field.
- `NR` is the current line number being analyzed by awk.

## EXAMPLES

`ls -l | awk '($3 == "guilherme")`
: Prints only the lines where the user is named guilherme, for the command ls -l:

`awk -F";" '{print $2, $NF}' filename.csv | head -n 10`
: Prints the second and last columns of a semicolon-separated CSV file. Only the first 10 lines:

`awk -F"," '(NR == 2) {flag=1} (NR == 5) {flag=0} flag {print $1}' filename.csv`
: Prints the first column of a CSV file, between lines 2 and 5:

`awk "/^Hello$/ {flag=1;next} /^World$/ {flag=0; exit} flag" filename`
: Prints all content between lines with "Hello" and "World", only on the first match (ignores other "Hello"/"World"
ranges that might appear later):

`gawk -i inplace '*command*' filename`
: Runs any awk command but saves the modifications in-place:

## NOTES

To print multiple variables on the same line, separate them with commas. If you separate them with spaces, they will be
printed without spacing ("glued" together).

There are other commands besides print, of course, but if it starts getting too complex, it's usually better to use a
more complete programming language.

An empty event prints the whole line. So, for example, `awk '/pattern/'` prints all lines that match a pattern.

`awk '1' filename` prints everything, while `awk '0' filename` prints nothing — which is why the flag-based logic works.

gawk is the GNU implementation of awk, with a few extra features (like inplace).
