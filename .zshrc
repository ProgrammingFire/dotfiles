# EXPORTS
export ZSH="$HOME/.oh-my-zsh"
export EDITOR="nvim"

# VARIABLES
ZSH_THEME="agnoster"

# ALIASES
alias ls="lsd -Alh"
alias lt="ls -t"
alias vim="nvim"
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# PLUGINS
plugins=(
git
zsh-syntax-highlighting
zsh-autosuggestions
npm
github
)

# COMMANDS TO RUN ON START
source $ZSH/oh-my-zsh.sh
neofetch
cd
