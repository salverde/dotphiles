# $ZDOTDIR/.zprofile: executed by the command interpreter for login shells.
# see /usr/share/doc/bash/examples/startup-files for examples.

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# volta
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

# cargo
. "$HOME/.cargo/env"

# golang
export PATH=$PATH:/usr/local/go/bin

# bun
export BUN_INSTALL="$HOME/.bun" 
export PATH="$BUN_INSTALL/bin:$PATH"

. "/$HOME/.deno/env"

# python
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"

eval "$(pyenv virtualenv-init -)"

# add flatpak for completion of ids
if [ -d "$HOME/.local/share/flatpak/exports/bin" ] ; then
    PATH="$HOME/.local/share/flatpak/exports/bin:$PATH"
fi


