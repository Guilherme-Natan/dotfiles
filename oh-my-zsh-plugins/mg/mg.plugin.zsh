function mg() {
  # help
  if [[ $1 == -h || $1 == --help ]]; then
    print '
Examples:
  mg             Searches for a man page using fzf
  mg docker      Shows your custom docker man page
  mg -e docker   Edits or creates a custom docker man page
  mg -e          Searches and then edits a custom man page'
    return
  fi

  # search
  if [[ $# -eq 0 || $1 == -s ]]; then
      program=$(find $HOME/.local/share/man/markdown -type f -printf "%f\n" | sed -E 's|(.*)\.md$|\1|' | fzf)
      man gnfb $program
      return
  fi

  # search then edit
  if [[ $1 == -e && $# -eq 1 ]]; then
    program=$(find $HOME/.local/share/man/markdown -type f -printf "%f\n" | sed -E 's|(.*)\.md$|\1|' | fzf)
    local mlp=$HOME/.local/share/man
    local md_file=$mlp/markdown/$program.md
    $EDITOR $md_file
    kramdown --output man $md_file > $mlp/mangnfb/$program.gnfb
    return
  fi

  # edit / create
  if [[ $1 == -e ]]; then
    local mlp=$HOME/.local/share/man
    local md_file=$mlp/markdown/$2.md

    [[ -f $md_file ]] || sed "s|%name|$2|g" "$mlp/template.md" > $md_file
    $EDITOR $md_file
    kramdown --output man $md_file > $mlp/mangnfb/$2.gnfb
    return
  fi

  man gnfb $1
}
