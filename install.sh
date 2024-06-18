#!/bin/bash

# Define the source directory
SOURCE_DIR="$HOME/dotfiles/config"

# Define the destination directory
DEST_DIR="$HOME/.config"

# Check if the source directory exists
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Source directory $SOURCE_DIR does not exist."
    exit 1
fi

# Remove existing directories in the destination directory
for dir in "$DEST_DIR"/*; do
    if [ -d "$dir" ]; then
        rm -rf "$dir"
    fi
done

# Copy directories from the source directory to the destination directory
for dir in "$SOURCE_DIR"/*; do
    cp -r "$dir" "$DEST_DIR/"
done

echo "Configuration directories have been replaced."
