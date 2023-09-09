# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zap-zsh/zap-prompt"
plug "zsh-users/zsh-syntax-highlighting"
plug "hlissner/zsh-autopair"

export EDITOR="lvim"
export PATH="$PATH:$HOME/.config/emacs/bin"

alias jfmt="jq -C | less -R"

alias vim="lvim"
alias vi="lvim"
alias v="lvim"
alias t="tmux"

alias addui="npx shadcn-ui@latest add"

alias typr="tt -highlight1 -t 30 -notheme"

alias wbarreload="killall waybar && waybar -s ~/.config/waybar/style.css -c ~/.config/waybar/config.jsonc &"

# alias ohmyzsh="mate ~/.oh-my-zsh"
alias  l='exa -l  --icons'
alias  c='clear'
alias cl="clear"
alias cls="clear"
alias ls='exa -l  --icons'
alias ll='exa -la --icons'
alias ld='exa -lD --icons'

alias htop='btop'
alias cat='bat'
alias scan='nmap -sC -sV -Pn -oN initial.nmap '

alias battery="upower -i `upower -e | grep 'BAT'` | grep 'percentage' | cut -d':' -f2 | tr -d '%,[:blank:]'"

alias in='sudo pacman -S' # install package
alias un='sudo pacman -Rns' # uninstall package
alias up='sudo pacman -Syu' # update system/package/aur
alias pl='pacman -Qs' # list installed package
alias pa='pacman -Ss' # list availabe package
alias pc='sudo pacman -Sc' # remove unused cache
alias po='pacman -Qtdq | sudo pacman -Rns -' # remove unused packages, also try > pacman -Qqd | pacman -Rsu --print -
alias vc='code'  # gui code editor

# FZF CATPPUCCIN

export FZF_DEFAULT_OPTS=" \
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"

set -U fish_user_paths $HOME/.local/bin

if [[ "$TERM" = "xterm-kitty" ]]; then
  neofetch --kitty
else
  neofetch
fi


# Load and initialise completion system
autoload -Uz compinit
compinit
