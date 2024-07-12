mv -T ~/dotfiles ~/.dotfiles
ln -s .dotfiles/.tmux.conf
ln -s .dotfiles/.vimrc

# Bashrc setup
echo 'source ~/.dotfiles/unlimited_bash_history.sh' >> ~/.bashrc
echo 'source ~/.dotfiles/vim_bash_keybindings.sh' >> ~/.bashrc
