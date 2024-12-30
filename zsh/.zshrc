# load powerlevel10k
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
source ~/.config/powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
source ~/.config/powerlevel10k/powerlevel10k.zsh-theme

# load packages
eval "$(/opt/homebrew/bin/brew shellenv)" # homebrew
eval "$(thefuck --alias)" # thefuck

# highlight directories
export CLICOLOR=1
export LSCOLOR=gxfxcxdxbxegedabagacad

# aliases
## directories
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'
## git
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
## dotnet
alias dnb='dotnet build'
alias dndb='dotnet-ef Database Update'
function dnr() {
    if [ -n "$1" ]
        then
            dotnet run --urls=https://localhost:"$1"
        fi
}
## obsidian
alias sync_obsidian='cp -R ~/Documents/"Obsidian Vault"/campbells/.obsidian ~/.config/'

# load variables
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export DOTNET_ROOT=~/dotnet
export PATH=$PATH:~/dotnet

# plugins
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
