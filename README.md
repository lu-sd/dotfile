# My dotfiles

This directory contains the dotfiles for my system macOS and Linux

## Requirements
Git and GNU stow are required to use these dotfiles.


## Installation
Check out the dotfiles repo in your $HOME directory using git

```
$ git clone git@github.com:yxian9/dotfile.git
$ cd dotfile
```

then use GNU stow to create symlinks

```
$ stow .
```

brew install
```
brew install wget lazygit zoxide fzf yazi fish bat ripgrep neovim tmux stow jq node  
brew install git-delta
brew install --cask nikitabobko/tap/aerospace@0.12.0
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
# brew install --cask font-jetbrains-mono-nerd-font
# brew install --cask alacritty # swith to kitty
#  python environment
brew install miniforge

## fisher setup
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
fisher install PatrickF1/fzf.fish
# fisher install joshmedeski/fish-lf-icons # switch from lf to yazi. no icon need

## kitty
# other alternative
# curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
```
macOS setting:
turn on
- "Keyboard navigation" in keyboard shortcuts.
- "Group diwndows by application"
turn off 
- "Displays have separate Spaces"

