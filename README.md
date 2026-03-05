# Dotfiles

Personal dotfiles for zsh configuration with useful aliases and git helpers.

## Features

- **Command Aliases**: Shortcuts for common commands using modern CLI tools
- **Git Workflow**: Comprehensive git aliases for efficient version control
- **Easy Setup**: Single script to configure your environment

## Prerequisites

- zsh shell
- [eza](https://github.com/eza-community/eza) - Modern replacement for ls (install with `brew install eza`)
- git

## Installation

1. Clone this repository:
   ```bash
   git clone <repository-url> ~/dotfiles
   cd ~/dotfiles
   ```

2. Run the setup script:
   ```bash
   chmod +x zsh/setup.sh
   ./zsh/setup.sh
   ```

3. Restart your terminal or source your configuration:
   ```bash
   source ~/.zshrc
   ```

## What's Included

## Command Aliases

## Git Log Formatting

This configuration includes custom git log formatting functions that display:
- Commit hash (yellow)
- Author name (blue)
- Relative time (green)
- Commit message
- Branch references (red)

Use `gl` for logs from the last month or `pretty_git_log_long` for the last 12 months.

## File Structure

```
dotfiles/
├── README.md              # This file
└── zsh/
    ├── aliases.zsh        # General and git aliases
    ├── git.zsh            # Git helper functions and formatting
    └── setup.sh           # Installation script
```

## Customization

Edit the files in the `zsh/` directory to customize your configuration:
- `aliases.zsh` - Add or modify command aliases
- `git.zsh` - Customize git log formatting and helper functions

After making changes, reload your shell configuration:
```bash
source ~/.zshrc
```

## License

Personal dotfiles - feel free to use and modify as needed.