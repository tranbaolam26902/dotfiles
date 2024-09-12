# disable .zsh_sessions
export SHELL_SESSIONS_DISABLE=1

# load zsh shell config
ZDOTDIR=~/.config/zsh
source -- "$ZDOTDIR"/.zshrc
