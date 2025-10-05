# Setup fzf
# ---------
if [[ ! "$PATH" == *$HOME/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}$HOME/.fzf/bin"
fi

source <(fzf --zsh)

export FZF_DEFAULT_OPTS="
  --color=fg:#7d9da5,fg+:#d0d0d0,bg:#10131c,bg+:#262626
  --color=hl:#5f87af,hl+:#5fd7ff,info:#9bb3b3,marker:#87ff00
  --color=prompt:#d7005f,spinner:#af5fff,pointer:#d7005f,header:#e75295
  --color=border:#333444,label:#aeaeae,query:#5bee1c
  --border='block' --border-label='' --preview-window='border-block' --prompt='❱'
  --marker='»' --pointer='᰾' --separator='─' --scrollbar='│'
  --layout='reverse' --info='right' --height='40%'"


  export FZF_CTRL_R_OPTS="--preview 'echo {}' --preview-window down:3:hidden:wrap --bind '?:toggle-preview'"
  export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -200'"

  source $HOME/.config/fzf/.fzf.flatpak.zsh
