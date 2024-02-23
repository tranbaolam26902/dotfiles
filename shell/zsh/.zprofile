# Packages
eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(oh-my-posh init zsh --config /Users/campbells/.config/shell/themes/violet.omp.json)"
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
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
alias gplm='git pull origin master'
alias gplc='git pull origin campbells'
alias gra='git restore .'
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
