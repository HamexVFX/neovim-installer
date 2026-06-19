# Neovim Installer

One-command installer for the **latest version of Neovim** on Linux using the official AppImage.

## 🚀 Quick Install

```bash
curl -fsSL https://raw.githubusercontent.com/HamexVFX/neovim-installer/main/install-neovim.sh | bash
```

## Features

- Always installs the **latest stable version**
- Uses official Neovim AppImage (lightweight & portable)
- Adds Neovim to your `$PATH` automatically
- Safe and idempotent (can be run multiple times)

## Usage

After installation, run:

```bash
nvim --version
```

To update Neovim in the future, simply run the install command again.

## How it works

The script:
1. Downloads the latest `nvim-linux-x86_64.appimage`
2. Moves it to `/opt/nvim/nvim`
3. Adds `/opt/nvim` to your `~/.bashrc`

## Requirements

- Linux x86_64 (AMD64)
- `curl` and `sudo` installed

## License

This project is licensed under the [MIT License](LICENSE) — feel free to use, modify, and distribute it.

---

## Contributing

Contributions, issues, and feature requests are welcome!

## Author

Made with ❤️ by [HameXVFX](https://github.com/HameXVFX)
