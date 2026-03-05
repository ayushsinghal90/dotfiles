#!/bin/bash

# Zsh dotfiles setup script
# Assumes zsh is already installed

set -e

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ZSHRC="$HOME/.zshrc"

echo "🚀 Setting up configuration..."
echo "Dotfiles directory: $DOTFILES_DIR"


# Create or update .zshrc
echo "✏️  Configuring .zshrc..."
cat >> "$ZSHRC" << EOF

# Dotfiles configuration
source "$DOTFILES_DIR/zsh/aliases.zsh"
source "$DOTFILES_DIR/zsh/git.zsh"
EOF

echo "✅ Setup configuration complete!"
