# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

## Step 1: Install Neovim
- brew install neovim

## Step 2: Install pre-requisites
- Nerd fonts [instructions](https://github.com/ryanoasis/nerd-fonts#option-4-homebrew-fonts) prefer brew install process
    - You migth also want configure your terminal to use the font you've just downloaded
- Lazy git [instructions](https://github.com/jesseduffield/lazygit) prefer brew install process
- rigrep [instructions](https://github.com/BurntSushi/ripgrep#installation) prefer brew install process
- fd [instructions](https://github.com/sharkdp/fd) prefer brew install process

## Step 2: Install Lazyvim
- Follow the instuction to install the plugin [LazyVim install](https://www.lazyvim.org/installation)
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
