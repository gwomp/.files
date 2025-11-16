#!/bin/bash

# Setup script for dotfiles
# Creates symlinks to configuration files, backing up existing files first

set -e  # Exit on error

# Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BACKUP_DIR="$SCRIPT_DIR/.backups"
TIMESTAMP=$(date +%Y%m%d_%H%M%S)

# Create backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

# Function to create symlink with backup
create_symlink() {
    local source_file="$1"
    local target_file="$2"
    local target_dir=$(dirname "$target_file")
    
    # Create target directory if it doesn't exist
    if [ ! -d "$target_dir" ]; then
        echo "Creating directory: $target_dir"
        mkdir -p "$target_dir"
    fi
    
    # Check if target already exists
    if [ -e "$target_file" ] || [ -L "$target_file" ]; then
        # Backup existing file/symlink
        local backup_file="$BACKUP_DIR/$(basename "$target_file").$TIMESTAMP"
        echo "Backing up existing $target_file to $backup_file"
        mv "$target_file" "$backup_file"
    fi
    
    # Create symlink
    echo "Creating symlink: $target_file -> $source_file"
    ln -s "$source_file" "$target_file"
}

# Create symlinks for configuration files
echo "Setting up dotfiles..."

# tmux configuration
create_symlink "$SCRIPT_DIR/tmux.conf" "$HOME/.tmux.conf"

# vim configuration
create_symlink "$SCRIPT_DIR/vim/vimrc" "$HOME/.vimrc"

# vim plugin settings (symlink entire folder)
create_symlink "$SCRIPT_DIR/vim/plugin_settings" "$HOME/.vim/plugin_settings"

echo "Setup complete!"
echo "Backups are stored in: $BACKUP_DIR"
