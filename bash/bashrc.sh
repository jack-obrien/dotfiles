# This is intended to be the single interface between the dotfiles and the .bashrc file.
# So during the setup phase, all we need to do is add "source ~/.config/dotfiles/bash/bashrc.sh" to the .bashrc file.
# Then I can continue making any future changes I want, and there is no further setup needed!

DOTFILES_DIR=$( dirname -- "${BASH_SOURCE[0]}" )

source $DOTFILES_DIR/unlimited_bash_history.sh
source $DOTFILES_DIR/vim_bash_keybindings.sh
source $DOTFILES_DIR/history_search.sh

alias histroy=history
