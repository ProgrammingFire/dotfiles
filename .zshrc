# EXPORTS
export ZSH="$HOME/.oh-my-zsh"
export EDITOR="nvim"

# VARIABLES
ZSH_THEME="powerlevel10k/powerlevel10k"

# ALIASES
alias ls="lsd"
alias ll="lsd --long"
alias l="lsd --long"
alias lt="ls -t"
alias vim="nvim"
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias vi="vim"
alias c="clear"
alias colors="colorscript -e colortest"

# PLUGINS
plugins=(
git
zsh-syntax-highlighting
zsh-autosuggestions
npm
github
vi-mode
)

# FUNCTIONS
function project {
  local project_dir = "$HOME/Projects"
  mkdir "$project_dir/$1"
  cd "$project_dir/$1"
  git init
}

if [ -f /etc/bash.command-not-found ]; then
    . /etc/bash.command-not-found
fi

# COMMANDS TO RUN ON START
source $ZSH/oh-my-zsh.sh
source $ZSH/custom/themes/gruvbox-dark.zsh-theme
cd
