DOTFILES_DIR=$( dirname -- "${BASH_SOURCE[0]}" )
echo $DOTFILES_DIR

source $DOTFILES_DIR/unlimited_bash_history.sh
source $DOTFILES_DIR/vim_bash_keybindings.sh

# alias rm to build safer habits
alias rm="echo Please use trash or /bin/rm"
