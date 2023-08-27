if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -g fish_greeting

export EDITOR="lvim"
export PATH="$PATH:$HOME/.config/emacs/bin"

alias vim="lvim"
alias vi="lvim"
alias v="lvim"
alias t="tmux"

alias typr="tt -highlight1 -t 30 -notheme"

alias wbarreload="killall waybar && waybar -s ~/.config/waybar/style.css -c ~/.config/waybar/config.jsonc &"

# alias ohmyzsh="mate ~/.oh-my-zsh"
alias  l='exa -l  --icons'
alias  c='clear'
alias ls='exa -1  --icons'
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

set -U fish_user_paths $HOME/.local/bin

if test "$TERM" = "xterm-kitty"
  neofetch --kitty
else
  neofetch
end

# starship init fish | source
