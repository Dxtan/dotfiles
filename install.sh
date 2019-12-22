#!/bin/sh

echo "Setting up your Mac now..."
DOTFILES=$HOME/.dotfiles
RESOURCES=$HOME/.dotfiles/resources

#Git
if test ! $(which git); then
  xcode-select --install
fi

#zsh
source ./scripts/zsh.sh

# Install global Composer packages
source ./scripts/composer.sh

# Install Laravel Valet
# $HOME/.composer/vendor/bin/valet install

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
source ./scripts/envfiles.sh

# Symlink the Mackup config file to the home directory
source ./scripts/makeup.sh

#Homebrew
source ./scripts/homebrew.sh

# Set macOS preferences
# We will run this last because this will reload the shell
# source .macos

echo 'Done!';

# source ./scripts/open-url.sh
