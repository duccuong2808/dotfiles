# Simple Dotfiles
The .zshrc file is too long, making it difficult to manage commands and aliases.
Therefore, it should be split into .zsh files in the ~/.zsh directory by module.

## ✨ Features
- **Easy Installation**: The installation script automates the entire process.
- **Auto-load Configuration**: Automatically loads all `.zsh` files in the `~/.zsh` directory.
- **Git Management**: Git configuration is separated and easy to manage.

## 📋 System Requirements

- **macOS** (currently not tested on Linux)
- **Zsh**
- **Git** (to clone the repository)


## 🔧 Installation

```bash
git clone https://github.com/duccuong/dotfiles.git ~/.zsh
cd ~/.zsh
./install.sh
source ~/.zshrc
```

## 🎯 Usage

After installation, all `.zsh` files in the `~/.zsh` directory will be automatically loaded every time you open a new terminal. You can create an additional `python.zsh` file in the `~/.zsh` directory to manage Python-related commands and aliases instead of adding them to the `~/.zshrc` file.

## Available Configurations
- `alias.zsh`: contains common aliases
- `gitconfig`: git configuration

Some available gitconfig configurations (read more at [gitconfig] - comments added):
- aliases for some git commands
- global gitignore configuration
- git push/pull configuration using tracking branch

## 🔍 Troubleshooting

### Error: "Permission denied" when running install.sh

```bash
chmod +x ~/.zsh/install.sh
./install.sh
```

## References

- [skwp/dotfiles](https://github.com/skwp/dotfiles) - Main inspiration
---

**Made with ❤️ by duccuong**
