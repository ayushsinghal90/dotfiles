#!/bin/bash

# Zsh dotfiles setup script
# Assumes zsh is already installed

set -e

# Get the parent directory (dotfiles root)
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DOTFILES_DIR="$(dirname "$SCRIPT_DIR")"
ZSH_DIR="$HOME/zsh"
ZSHRC="$HOME/.zshrc"

echo "🚀 Setting up zsh configuration..."
echo "New ZSH directory: $ZSH_DIR"

# Create zsh directory if it doesn't exist
if [ ! -d "$ZSH_DIR" ]; then
    echo "📁 Creating zsh directory..."
    mkdir -p "$ZSH_DIR"
fi

# Copy files to zsh directory
echo "📋 Copying configuration files..."
cp "$SCRIPT_DIR/aliases.zsh" "$ZSH_DIR/"
cp "$SCRIPT_DIR/git.zsh" "$ZSH_DIR/"

# Create or update .zshrc
echo "✏️  Configuring .zshrc..."
cat >> "$ZSHRC" << EOF

# Dotfiles configuration
source "$ZSH_DIR/aliases.zsh"
source "$ZSH_DIR/git.zsh"
EOF

echo "✅ Setup complete!"
echo "📝 Run 'source ~/.zshrc' to load the configuration"
