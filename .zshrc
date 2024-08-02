# list files with details
alias ll="ls -larht"

# show all history lines
alias history="history 1"

# set the locale of the shell
export LANG="en_US.UTF-8"

# define VSCode as the default text editor
export EDITOR="lvim"

# include user-specific binaries and scripts
export PATH="$HOME/.local/bin:$PATH"

# add Rust binaries to the PATH
export PATH="$PATH:$HOME/.cargo/bin"

# add Go binaries to the PATH
export PATH="$PATH:$HOME/go/bin"
export PATH="$PATH:/usr/local/go/bin"

# system wide cli
export PATH="$PATH:/usr/local/bin"

# specify characters considered as word boundaries for command line navigation
export WORDCHARS=""

# set the location and filename of the history file
export HISTFILE="$HOME/.zsh_history"

# set the maximum number of lines to be saved in the history file
export HISTSIZE="100000"
export SAVEHIST="$HISTSIZE"


# enable comments "#" expressions in the prompt shell
setopt INTERACTIVE_COMMENTS

# append new history entries to the history file
setopt APPEND_HISTORY

# save each command to the history file as soon as it is executed
setopt INC_APPEND_HISTORY

# ignore recording duplicate consecutive commands in the history
setopt HIST_IGNORE_DUPS

# ignore commands that start with a space in the history
setopt HIST_IGNORE_SPACE

# >>> load ZSH plugin

# load zsh-autosuggestions
source "$HOME/.my-custom-zsh/zsh-autosuggestions/zsh-autosuggestions.zsh"

# load zsh-syntax-highlighting
source "$HOME/.my-custom-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

# start Starship prompt
eval "$(starship init zsh)"
