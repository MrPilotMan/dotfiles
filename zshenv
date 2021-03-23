export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

# ZSH
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export HISTFILE="$XDG_CACHE_HOME/zsh/.zsh_history"
export HISTSIZE="100000"
export SAVEHIST="100000"

# Path
export PATH="/usr/local/sbin:$PATH"

# Default apps
export BROWSER="brave-browser"

# Program specific environment variables
export ASDF_DATA_DIR="$XDG_CONFIG_HOME/.asdf"
export ASDF_DEFAULT_TOOL_VERSIONS_FILENAME="$XDG_CONFIG_HOME/.asdf/.tool-versions"

export ATOM_HOME="$XDG_CONFIG_HOME/.atom/"

export GIT_CONFIG="$XDG_CONFIG_HOME/git/config"

export GH_NO_UPDATE_NOTIFIER="1"

export GNUPGHOME="$XDG_CONFIG_HOME/gpg/"

# Avoid issues with `gpg` as installed via Homebrew. https://stackoverflow.com/a/42265848/96656
export GPG_TTY=$(tty);

export HOMEBREW_BAT="1"
export HOMEBREW_CACHE="$XDG_CACHE_HOME/Homebrew/"
export HOMEBREW_LOGS="$XDG_CACHE_HOME/Homebrew/Logs"
export HOMEBREW_NO_ANALYTICS="1"
export HOMEBREW_VERBOSE_USING_DOTS="1"

export LPASS_AGENT_TIMEOUT="30000"

export NODE_REPL_HISTORY="$XDG_CACHE_HOME/js/node/.node_repl_history"
export NODE_REPL_HISTORY_SIZE="10000"
export NODE_REPL_MODE="sloppy"
export NPM_CONFIG_CACHE="$XDG_CACHE_HOME/js/npm/"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/.npmrc"
