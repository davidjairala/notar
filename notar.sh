notesdir() {
  echo "/Users/`whoami`/Dropbox/Notes/"
}

nnote() {
  foldername=$(date +%Y_%m_%d)
  echo `notesdir`"$foldername"
  subl `notesdir`"$foldername"
}

notes() {
  subl `notesdir`
}

fnotes() {
  open `notesdir`
}
