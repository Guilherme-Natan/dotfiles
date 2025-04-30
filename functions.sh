#!/bin/bash
link_all_files() {
  src="$PWD/$1"
  dest="$2"

  for file in "$src"/*; do
    [ -f "$file" ] || continue  # Skip if not a regular file
    dest_file=$3$(basename $file) # "$3" is used to prepend a dot to ./home files
    ln -s "$file" "$dest/$dest_file" 2> /dev/null || continue 
    echo "File $dest_file created"
  done
}

