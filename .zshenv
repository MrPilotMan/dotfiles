# This was the best way I could find to move ~/.zshenv to ~/.config/zsh/.zshenv
# Can't use $XDG_CONFIG_HOME yet becuase that is sourced in the env file in .config/...
source $HOME/zsh/.zshenv
