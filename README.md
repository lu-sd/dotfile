# My dotfiles

This directory contains the dotfiles for macOS and Linux

- [lazyVim](https://www.lazyvim.org/) - 💤 neovim distribution 
- [lazygit](https://github.com/jesseduffield/lazygit) -  💤 terminal UI for git 
- [kitty](https://github.com/kovidgoyal/kitty) - 🐱 a terminal that support true color and image protocol
- [fish shell](https://fishshell.com/) - 🐠 build in vim mode, not posix compatiable though..
- [tmux](https://github.com/tmux/tmux) - terminal multiplexer
- [fzf](https://github.com/PatrickF1/fzf.fish) - Interactive filtering
- [yazi](https://github.com/sxyazi/yazi) - terminal file manager

## Requirements

Git and GNU stow are required to use these dotfiles.

## Installation

Check out the dotfiles repo in your $HOME directory using git


then use GNU stow to create symlinks

```
cd ~ && git clone https://github.com/lu-sd/dotfile 
cd dotfile
stow .
```

brew install

```
brew install wget lazygit zoxide fzf yazi fish bat ripgrep neovim tmux stow
brew install --cask nikitabobko/tap/aerospace
brew install --cask font-victor-mono-nerd-font
brew install --cask kitty

## addition application
brew install --cask google-chrome
brew install --cask bitwarden
brew install --cask pdfsam-basic # merge pdf files
brew install --cask iina
brew install --cask cyberduck
brew install --cask visual-studio-code
brew install --cask slack
brew install --cask temurin ## JDK https://adoptium.net/
brew install --cask zoom
# brew install --cask font-jetbrains-mono-nerd-font
# brew install --cask alacritty # swith to kitty
#  python environment
brew install miniforge

## fisher setup
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
fisher install PatrickF1/fzf.fish
```

macOS setting:

turn on
- "Keyboard navigation" in keyboard shortcuts.
- "Group windows by application"

turn off
- "Displays have separate Spaces"
