#!/bin/sh

editor() {
  subl $1
}

notesdir() {
  echo "/Users/`whoami`/Dropbox/Notes/"
}

nnote() {
  foldername=$(date +%Y_%m_%d)
  note_path=`notesdir`"$foldername"

  # create timestamped folder
  mkdir -p "$note_path"

  if [ $# -eq 1 ]
    then
      # argument was supplied, open file
      editor "$note_path"
      editor "$note_path/$1.md"
  else
      # no argument, just open folder
      editor "$note_path"
  fi

}

notes() {
  subl `notesdir`
}

onotes() {
  open `notesdir`
}
