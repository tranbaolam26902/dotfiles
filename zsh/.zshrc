# load powerlevel10k
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
source ~/.config/powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
source ~/.config/powerlevel10k/powerlevel10k.zsh-theme

# load packages
eval "$(/opt/homebrew/bin/brew shellenv)" # homebrew

# highlight directories
export CLICOLOR=1
export LSCOLOR=gxfxcxdxbxegedabagacad

# aliases
## directories
alias ll='ls -l --color=always | grep -v ".DS_Store"'
alias la='ls -a --color=always | grep -v ".DS_Store"'
alias lla='ls -la --color=always | grep -v ".DS_Store"'
alias cd='z'
## git
alias gs='git status'
alias gd='git diff'
alias gaa='git add .'
alias ga='git add'
alias gcm='git commit -m'
alias gr='git restore'
alias gl='git log'
alias gll='git log --oneline'
alias gf='git fetch'
alias gb='git branch'
alias gc='git checkout'
alias gcb='git checkout -b'
alias gbd='git branch -d'
alias gp='git push'
alias gpl='git pull'
alias gra='git restore .'
alias gpab='git fetch --all --prune && for b in $(git branch -r | grep -v "\->"); do git branch --track "${b#origin/}" "$b" 2>/dev/null || true; done && git fetch --all'
## yarn
alias yd='yarn dev'
alias yl='yarn lint'
alias ylf='yarn lint --fix'
alias yb='yarn build'
alias ylb='yarn lint && yarn build'
## docker
alias dcu='docker compose up -d'
alias dcd='docker compose down'
alias dcub='docker compose up -d --build'
## automation scripts
alias dotfiles="~/.config/bash/dotfiles_workspaces.sh"
dls() {
    SESSION_NAME=$1
    WINDOW_NAME=$2
    PROJECT_SUBDIR=$3

    BASE_DIR="$HOME/Workspaces/dls-projects"
    PROJECT_DIR="$BASE_DIR/$PROJECT_SUBDIR"

    if [ ! -d "$PROJECT_DIR" ]; then
        echo "⚠️ ERROR: Project directory '$PROJECT_DIR' does not exist!"
        return 1
    fi

    bash ~/.config/bash/dls_workspaces.sh "$SESSION_NAME" "$WINDOW_NAME" "$PROJECT_DIR"
}

# load variables
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
eval "$(zoxide init zsh)" # This load zoxide
export DOTNET_ROOT=~/dotnet
export PATH=$PATH:~/dotnet

# plugins
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
