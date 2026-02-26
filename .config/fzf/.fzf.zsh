# Setup fzf
# ---------
if [[ ! "$PATH" == *$HOME/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}$HOME/.fzf/bin"
fi

source <(fzf --zsh)

# export FZF_DEFAULT_OPTS="
#   --color=fg:#929EEE,fg+:#D2D589,bg:#0E1510,bg+:#0E1510
#   --color=hl:#5f87af,hl+:#4555B9,info:#afaf87,marker:#56B169
#   --color=prompt:#56B169,spinner:#4555B9,pointer:#ED1577,header:#87afaf
#   --color=border:#17231a,preview-fg:#4555B9,label:#D2D589,query:#4555B9
#   --border='block' --preview-window='border-sharp' --prompt='⦊⦊'
#   --marker='⋗' --pointer='⊚' --separator='─' --scrollbar='│'
#   --layout='reverse' --info='right'"
#
export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS"
  --color=fg:#929EEE,fg+:#d0d0d0,bg:#0c0c0d,bg+:#262626
  --color=hl:#5f87af,hl+:#5fd7ff,info:#afaf87,marker:#56B169
  --color=prompt:#56B169,spinner:#ed1577,pointer:#ED1577,header:#d2d589
  --color=border:#233233,preview-fg:#4555B9,label:#D2D589,query:#4555B9
  --border='block' --preview-window='border-sharp' --prompt='⧷⧷'
  --marker='⥀' --pointer='⥁' --separator='─' --scrollbar='│'
  --layout='reverse' --info='right'"

export FZF_CTRL_R_OPTS="--preview 'echo {}' --preview-window down:3:hidden:wrap --bind '?:toggle-preview'"
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -200'"

source $XDG_CONFIG_HOME/fzf/.fzf.flatpak.zsh
source $XDG_CONFIG_HOME/fzf/.fzf.locate.zsh
# for file in $XDG_CONFIG_HOME/fzf/**/.*(.); source $file
