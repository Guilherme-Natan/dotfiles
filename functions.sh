#!/bin/bash
link_all_files() {
  src="$PWD/$1"
  dest="$2"

  for file in "$src"/*; do
    [[ -f "$file" ]] || continue  # Skip if not a regular file
    dest_file=$3$(basename $file) # "$3" is used to prepend a dot to ./home files
    ln -s "$file" "$dest/$dest_file" 2> /dev/null || continue 
    echo "Symink $dest_file created"
  done
}

link_all_dirs() {
  src="$PWD/$1"
  dest="$2"

  for dir in "$src"/*; do
    [[ -d "$dir" ]] || continue  # Skip if not a directory
    dest_dir=$(basename $dir)
    [[ -d "$dest/$dest_dir" ]] && continue # Skip if destiny alreary exists
    ln -s "$dir" "$dest/$dest_dir" 2> /dev/null || continue 
    echo "Symink $dest_dir created"
  done
}

link_dir() {
  src="$PWD/$1"
  dest="$2"

  [[ -d "$src" ]] || return  # Skip if not a directory
  [[ -d "$dest" ]] && return # Skip if destiny alreary exists
  ln -s "$src" "$dest" 2> /dev/null || return 
  echo "Symink $1 created"
}

