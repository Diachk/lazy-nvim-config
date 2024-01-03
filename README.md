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
- Pull the config
```console
# Backup
mv ~/.config/nvim{,.bak}
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}

# Pull
git clone https://github.com/Diachk/lazy-nvim-config.git ~/.config/nvim

# Go
neovim
````

## Example configs
- https://github.com/rtgiskard/lazyNvim
