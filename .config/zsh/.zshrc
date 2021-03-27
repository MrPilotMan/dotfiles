#! /bin/zsh

# 1) ~/.zshenv
# 2) ~/.config/zsh/.zshenv
# 3) ~/.congic/zsh/.zshrc
# 3) ~/.config/zsh/.zshenv
# 5) Anything `source`ed in this file

#zmodload zsh/zprof  # Uncomment for profiling

# Pretty terminal login info/items
neofetch
cal -3

# Homebrew auto-completions (really slow)
# https://docs.brew.sh/Shell-Completion#configuring-completions-in-zsh
if type brew &> /dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
  autoload -Uz compinit
  compinit
fi

# On sourcing .zshenv again:
# Without resourcing .zshenv `HISTFILE` gets set to "$ZDOTDIR/.zsh_history" instead
# of "$XDG_CACHE_HOME/zsh/.zsh_history", as specified in ~/.config/zsh/.zshenv
source $XDG_CONFIG_HOME/zsh/.zshenv
source $XDG_CONFIG_HOME/.aliases
source $XDG_CONFIG_HOME/.prompt
source $XDG_CONFIG_HOME/.tokens
source $XDG_CONFIG_HOME/.vpnrc  # Used for my custom vpn manager script

for script in $(ls ~/.scripts/**/*.(sh|zsh)); do source "$script"; done

# History options
setopt APPEND_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST  # Remove duplicate commands first
setopt HIST_FIND_NO_DUPS       # Ignore duplicate commands when searching
setopt HIST_IGNORE_DUPS        # Ignore duplicate commands
setopt HIST_REDUCE_BLANKS      # Remove blank lines from history
setopt INC_APPEND_HISTORY      # Add commands in real time

# asdf
source /usr/local/opt/asdf/asdf.sh

#zprof  # Uncomment for profiling
