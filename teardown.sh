#!/bin/bash

# Teardown script for dotfiles
# Removes symlinks and restores backups

set -e  # Exit on error

# Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BACKUP_DIR="$SCRIPT_DIR/.backups"

# Function to remove symlink and restore backup
remove_symlink() {
    local target_file="$1"
    
    # Check if target is a symlink
    if [ -L "$target_file" ]; then
        echo "Removing symlink: $target_file"
        rm "$target_file"
        
        # Find and restore the most recent backup
        local backup_pattern="$BACKUP_DIR/$(basename "$target_file").*"
        local latest_backup=$(ls -t $backup_pattern 2>/dev/null | head -n 1)
        
        if [ -n "$latest_backup" ] && [ -f "$latest_backup" ]; then
            echo "Restoring backup: $latest_backup -> $target_file"
            mv "$latest_backup" "$target_file"
        else
            echo "No backup found for $target_file"
        fi
    elif [ -e "$target_file" ]; then
        echo "Warning: $target_file exists but is not a symlink. Skipping."
    else
        echo "No symlink found at $target_file"
    fi
}

# Remove symlinks and restore backups
echo "Tearing down dotfiles..."

# Remove tmux configuration symlink
remove_symlink "$HOME/.tmux.conf"

# Remove vim configuration symlink
remove_symlink "$HOME/.vimrc"

# Remove vim plugin settings symlink (entire folder)
remove_symlink "$HOME/.vim/plugin_settings"

echo "Teardown complete!"
