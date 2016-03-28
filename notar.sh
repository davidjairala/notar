#!/bin/sh

###########
# Helpers #
###########

_notar_editor() {
  subl $1
}

_notar_search() {
  ag $1 `notesdir`
}


#################
# Functionality #
#################

# what's the notes dir
notesdir() {
  echo "/Users/`whoami`/Dropbox/Notes/"
}

# new note, optional name of note param
nnote() {
  foldername=$(date +%Y_%m)
  note_path=`notesdir`"$foldername"

  # create timestamped folder
  mkdir -p "$note_path"

  if [ $# -eq 1 ]; then
    # argument was supplied, open file
    _notar_editor "$note_path"
    _notar_editor "$note_path/$1.md"
  else
    # no argument, just open folder
    _notar_editor "$note_path"
  fi

}

# open the notes dir
notes() {
  subl `notesdir`
}

ntodo() {
  subl `notesdir`
  subl `notesdir`todo.md
}

# cd into the notes dir
gnotes() {
  cd `notesdir`
}

# open the notes dir in finder
onotes() {
  open `notesdir`
}

# search for a note
fnotes() {
  _notar_search $1
}
