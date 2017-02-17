# jot
An incredibly tiny command line program for writing notes and journal entries. 

Whenever you would like to make a note, just type `jot`. By default, jot will launch your preferred text editor with a file named for the current date. 

If an argument is supplied, the file will take the name of the argument. (E.g. `jot jutaliltest.txt` will open entries/jutaliltest.txt).

If such a file already exists, the existing file will launch. So with a quick `jot` in the evening you can finish that thought you left
hanging in the morning.

## Instrux
### installation:
Clone the repository and then copy jot.rb to a directory on your PATH.

### set up:

Set the `EDITOR` variable to your preferred editor and set the `ENTRY_DIR` to the directory where you would like to store your notes. Be sure that your ENTRY_DIR is already created, otherwise you will receive an error.

By default, `EDITOR` is set to 'vim' and `ENTRY_DIR` is set to the hidden directory ~/.jot/entries.
