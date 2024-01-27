# Packages
eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(oh-my-posh init zsh --config /Users/campbells/.config/shell/themes/violet.omp.json)"
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
export PATH="$PATH:/Users/campbells/.dotnet/tools"

# Directory
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'

# Git
alias gs='git status'
alias gaa='git add .'
alias gp='git push'
alias gpc='git push origin campbells'
alias gpm='git push origin master'
alias gplm='git pull origin master'
alias gplc='git pull origin campbells'

# Load variables
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
