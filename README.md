# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

## Step 1: Install Neovim
- brew install neovim

## Step 2: Install pre-requisites
- Nerd fonts [instructions](https://github.com/ryanoasis/nerd-fonts#option-4-homebrew-fonts) prefer brew install process
    - You migth also want configure your terminal to use the font you've just downloaded
```console
brew tap homebrew/cask-fonts
```
```console
brew install font-jetbrains-mono-nerd-font
```
- Lazy git [instructions](https://github.com/jesseduffield/lazygit) prefer brew install process
```console
brew install jesseduffield/lazygit/lazygit
```
- rigrep [instructions](https://github.com/BurntSushi/ripgrep#installation) prefer brew install process
```console
brew install rigrep
```
- fd [instructions](https://github.com/sharkdp/fd) prefer brew install process

## Step 3: Install Lazyvim
- Backup files
```console
# required
mv ~/.config/nvim{,.bak}

# optional but recommended
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```
- Pull the config
```console
git clone https://github.com/Diachk/lazy-nvim-config.git ~/.config/nvim
````
- Start NeoVim
```console
neovim
```
