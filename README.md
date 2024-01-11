# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

## Step 1: Install Neovim
```console
brew install neovim
```

## Step 2: Install pre-requisites
```console
# Nerd fonts
brew tap homebrew/cask-fonts
brew install font-jetbrains-mono-nerd-font

# Lazy git
brew install jesseduffield/lazygit/lazygit

# RiGrep
brew install rigrep

# fd
brew install fd
```

## Step 3: Install Lazyvim
```console
# Pull the config
git clone https://github.com/Diachk/lazy-nvim-config.git ~/.config/nvim

# Go
neovim
````

## Uninstall
```console
# Delete evrything, you might want to backup first
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.cache/nvim
```

## Example configs
- https://github.com/rtgiskard/lazyNvim
