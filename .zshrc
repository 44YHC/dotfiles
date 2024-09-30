alias ls="eza --icons=always"
alias cd="z"
alias .ssh='cd ~/.ssh' 
alias .zsh='nvim ~/.zshrc'
alias nv='nvim'
alias lg='lazygit'
alias nb='npm run build'
alias ns='npm run start'
alias nd='npm run dev'
alias nl='npm run local'
alias downloads='cd ~/Downloads/'
alias documents='cd ~/Documents/'
alias cluster='cd ~/code/garage-cluster/'
alias chart='cd ~/code/garage-chart/'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-history-substring-search/zsh-history-substring-search.zsh
source <(helm completion zsh)
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform

fpath=($fpath ~/.zsh/completion)

HISTFILE=~/.zsh_history
HISTSIZE=999
SAVEHIST=1000
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

autoload -U compinit
compinit

bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

eval "$(zoxide init zsh)"
