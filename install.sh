#!/bin/bash

# Enable case-insensitive completion
if ! grep -qF "bind 'set completion-ignore-case on'" ~/.bashrc; then
    echo -n "Enabling case insensitive completing..."
    echo "bind 'set completion-ignore-case on'" >> ~/.bashrc
    echo "Done."
fi

# Install Homebrew
if ! command -v brew &> /dev/null; then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    (echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> /home/oahshtsua/.bashrc
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
    echo "Done."
fi

packages=(
    # Utilities
    fd
    fzf
    neovim
    ripgrep
    starship
    stow
    tmux
    typst
)

echo "Installing packages..."
brew install "${packages[@]}"
echo "Done."

# Enable Starship
if ! grep -qF 'eval "$(starship init bash)"' ~/.bashrc; then
    echo -n "Enabling Starship..."
    echo 'eval "$(starship init bash)"' >> ~/.bashrc
    echo "Done."
fi
