#!/bin/bash

# Update package list and upgrade the system
echo "Updating package list..."
sudo apt update && sudo apt upgrade -y

# Install required packages via APT
echo "Installing APT packages..."
apt_packages=(
  curl
  alacritty
  fish
  fonts-jetbrains-mono
  fzf
  stow
  ripgrep
  flatpak
  tmux
  trash-cli
  fd-find
  tree
)
sudo apt install -y "${apt_packages[@]}"

# Add Flathub repository if it doesn't exist
echo "Adding Flathub remote..."
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# Define list of Flatpak packages
flatpak_packages=(
  "app.zen_browser.zen"
  "org.signal.Signal"
  "com.getpostman.Postman"
  "io.dbeaver.DBeaverCommunity"
  "com.discordapp.Discord"
  "org.videolan.VLC"
  "org.qbittorrent.qBittorrent"
  "md.obsidian.Obsidian"
  "us.zoom.Zoom"
  "org.azahar_emu.Azahar"
)

# Install all Flatpak packages in one go
echo "Installing Flatpak packages..."
flatpak install -y flathub "${flatpak_packages[@]}"

# Install Zed
curl -f https://zed.dev/install.sh | sh

# Install Homebrew
if ! command -v brew &> /dev/null; then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    # Set up Homebrew for fish shell
    echo "Adding Homebrew to fish config..."
    fish_config="$HOME/.config/fish/config.fish"
    brew_line='eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)'

    # Add brew shellenv only if not already present
    if ! grep -Fxq "$brew_line" "$fish_config"; then
        echo "$brew_line" >> "$fish_config"
    fi

    # Apply brew to current shell
    eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)

    echo "Homebrew installation and fish shell setup complete."
fi

brew_packages=(
    neovim
    ruff
    stylua
    typst
)

echo "Installing brew packages..."
brew install "${packages[@]}"
echo "Done."

# Confirm installation
echo "Installation complete. Please restart your system."
