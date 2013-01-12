Terminal
========

Sets terminal window and tab titles.

Settings
--------

### Auto-Title

To auto set the terminal window and tab titles with the current command or
directory, add the following to *zpreztorc*:

    zstyle ':prezto:module:terminal' auto-title 'yes'

To format terminal window and tab titles, add the following to *zpreztorc*:

    zstyle ':prezto:module:terminal:window-title' format '%n@%m: %s'
    zstyle ':prezto:module:terminal:tab-title' format '%m: %s'

`%s` will be replaced with the current working directory path or the currently
executing program name.

For a list of sequences, see [Expansion of Prompt Sequences][1].

Functions
---------

- `set-screen-window-title` sets the screen title.
- `set-terminal-tab-title` sets the terminal tab title.
- `set-terminal-window-title` sets the terminal window title.
- `set-titles-with-command` sets the screen and terminal titles with
  a given command.
- `set-titles-with-path` sets the screen and terminal titles with a given path.

Authors
-------

*The authors of this module should be contacted via the [issue tracker][2].*

  - [James Cox](https://github.com/imajes)
  - [Sorin Ionescu](https://github.com/sorin-ionescu)

[1]: http://zsh.sourceforge.net/Doc/Release/Prompt-Expansion.html#Expansion-of-Prompt-Sequences
[2]: https://github.com/sorin-ionescu/prezto/issues

