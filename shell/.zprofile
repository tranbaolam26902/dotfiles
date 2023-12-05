eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(oh-my-posh init zsh --config /Users/campbells/.config/shell/themes/violet.omp.json)"
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
export PATH="$PATH:/Users/campbells/.dotnet/tools"
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias gs='git status'
alias gaa='git add .'
alias gp='git push'
alias gpc='git push origin campbells';
alias gpm='git push origin master';
clear
