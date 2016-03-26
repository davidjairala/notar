# Usage

Source in your .bashrc, .zshrc, etc.  Then:

Open up `notar.sh` and set up `notesdir` to point to your Notes directory.
I like to keep mine in a Dropboxed folder.  You might also want to change
`_notar_editor` into your favorite editor and `_notar_search` into your
favorite search search tool.

* `nnote`: create a timestamped folder inside your notes folder and open
your text editor there.
* `nnote note_name`: create a teimstamped folder as above, but also open
your text editor on the file `note_name.md`.
* `notes`: open file editor on your notes folder.
* `gnotes`: cd into notes folder.
* `onotes`: open notes folder with finder.
* `fnotes`: use `ag` to search for notes.
