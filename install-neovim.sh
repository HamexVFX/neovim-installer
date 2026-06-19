#!/bin/bash
# install-neovim.sh - Install latest Neovim AppImage

set -e  # Exit on error

echo "Downloading latest Neovim AppImage..."
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.appimage

echo "Making it executable..."
chmod u+x nvim-linux-x86_64.appimage

echo "Installing to /opt/nvim..."
sudo mkdir -p /opt/nvim
sudo mv nvim-linux-x86_64.appimage /opt/nvim/nvim

echo "Adding Neovim to PATH..."
if ! grep -q '/opt/nvim' ~/.bashrc; then
    echo 'export PATH="$PATH:/opt/nvim"' >> ~/.bashrc
    echo "Added to ~/.bashrc"
fi

echo "✅ Neovim installed successfully!"
echo "Run the following command to use it in the current shell:"
echo "source ~/.bashrc"
echo ""
echo "Or restart your terminal."
echo "Test with: nvim --version"
