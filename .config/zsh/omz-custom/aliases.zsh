#
#
### Custom Aliases

alias reload="exec zsh"
alias vim="nvim"

alias down="cd $HOME/Downloads/"
alias codedir="cd $HOME/Code/"
alias vimz="nvim $ZDOTDIR/.zshrc"
alias vimalias="nvim $ZSH_CUSTOM/aliases.zsh"

alias ff="fastfetch"
alias bat="batcat"

# flatpak
#
alias fp="flatpak"
alias fpls="flatpak list --columns=version,name,application,size"
alias fprm="flatpak uninstall"
alias fpup="flatpak update"
alias fpfix="flatpak repair"

#
## eza

alias l="eza -l -a --icons -G --time-style=relative -h --sort=newest"
alias ll="eza -l -a --icons --reverse"
alias lmod="eza -a --icons -G --sort=modified -h"
alias lll="eza -l -h -G --icons --time-style=relative --sort=oldest"

alias lg="lazygit"
alias mybtm="btm -f --battery"
