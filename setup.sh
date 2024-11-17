#!/bin/bash
# Setup the dotfiles scripts.
# NOTE: Do not run this script from within the dotfiles directory, as this script
# will move the whole repo to ~/.config

OLD_DOTFILES_DIR=$(dirname "$0")
NEW_DOTFILES_DIR=~/.config/dotfiles

# Use absolute paths to make comparison cleaner
OLD_DOTFILES_DIR=$(realpath "$OLD_DOTFILES_DIR")
NEW_DOTFILES_DIR=$(realpath "$NEW_DOTFILES_DIR")

# Function to handle errors
handle_error() {
    echo "Error: $1"
    exit 1
}

# Move dotfiles directory
if [ "$OLD_DOTFILES_DIR" != "$NEW_DOTFILES_DIR" ]; then
    mv -T "$OLD_DOTFILES_DIR" "$NEW_DOTFILES_DIR" || handle_error "Failed to move dotfiles directory"
fi

# Create backup directory if it doesn't exist
mkdir -p "$NEW_DOTFILES_DIR/old_scripts" || handle_error "Failed to create backup directory"

# Backup existing config files
for file in ~/.tmux.conf ~/.vimrc; do
    if [ -f "$file" ]; then
        mv "$file" "$NEW_DOTFILES_DIR/old_scripts/" || handle_error "Failed to backup $file"
    fi
done

# Setup symlinks
for file in .tmux.conf .vimrc; do
    if [ ! -L ~/"$file" ]; then  # Only create if symlink doesn't exist
        ln -s "$NEW_DOTFILES_DIR/$file" ~/"$file" || handle_error "Failed to create symlink for $file"
    else
        echo "Warning: Symlink for $file already exists"
    fi
done

# Delete any references to the old dotfiles dir in bashrc
sed -i "s?.*${OLD_DOTFILES_DIR}.*??g" ~/.bashrc || handle_error "Failed to remove old source lines from .bashrc"

# Adds the extra bashrc stuff, if it is not already there.
if ! grep -q "source $NEW_DOTFILES_DIR/bash/bashrc.sh" ~/.bashrc; then
    echo >> ~/.bashrc
    echo "source $NEW_DOTFILES_DIR/bash/bashrc.sh" >> ~/.bashrc
else
    echo "Warning: bashrc source line already exists"
fi

echo "Dotfiles setup completed successfully!"
