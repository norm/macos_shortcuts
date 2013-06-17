# Easier overriding of keyboard shortcuts in OS X

I customise the keyboard shortcuts a lot on my Mac. So I wrote a little 
wrapper around doing it in a more source control compatible way.

## Install

1. Copy `bin/shortcuts` into your `$PATH` somewhere.
2. Create a folder for your shortcuts. By default this is `~/etc/shortcuts`.
   If you want to keep them in a different folder, you can set the environment
   variable `SHORTCUTS_DIRECTORY`.
3. Create some shortcut files, then run `shortcuts` to install them.

## Creating new shortcuts

Create a file named for the OSX defaults domain of the targeted application.
For example, Safari saves its preferences in the file `~/Library/Preferences/com.apple.Safari.plist`, so you would use `com.apple.Safari`.

The file should look something like:

    # prefer arrows to curly braces
    Select Next Tab                 cmd-opt-right
    Select Previous Tab             cmd-opt-left
    
    # used often enough to warrant a shortcut
    Disable JavaScript              cmd-opt-J

The menu entry is on the left, the shortcut is on the right; they need to be
separated by at least two whitespace characters.

The shortcut can contain the following human-readable text which will be 
converted to the format needed by OS X:

* `command` (or `cmd`)
* `option` (or `opt` or `alt`)
* `shift`
* `control` (or `ctrl`)
* `left` for the left arrow key
* `right` for the right arrow key
* `up` for the up arrow key
* `down` for the down arrow key
