# p10k
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
source ~/powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source ~/powerlevel10k/powerlevel10k.zsh-theme

# Packages
eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(thefuck --alias)"
export PATH="$PATH:/Users/campbells/.dotnet/tools"

# Highlight directories
export CLICOLOR=1
export LSCOLOR=gxfxcxdxbxegedabagacad

# Aliases
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias gs='git status'
alias gd='git diff'
alias gaa='git add .'
function gcm() {
    if [ -n "$1" ]
    then
        git commit -m "$1"
    fi
}
alias gp='git push'
alias gpm='git push origin master'
alias gpc='git push origin campbells'
alias gpl='git pull'
alias gplm='git pull origin master'
alias gplc='git pull origin campbells'
alias gra='git restore .'

alias dnb='dotnet build'
alias dndb='dotnet-ef Database Update'
function dnr() {
    if [ -n "$1" ]
        then
            dotnet run --urls=https://localhost:"$1"
        fi
}

# Load variables
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
