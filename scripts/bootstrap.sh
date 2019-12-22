DOTFILES=$HOME/.dotfiles
RESOURCES=$HOME/.dotfiles/resources

promptyn () {
    while true; do
        read -p "$1 " yn
        case $yn in
            [Yy]* ) return 0;;
            [Nn]* ) return 1;;
            * ) echo "Please answer yes or no.";;
        esac
    done
}

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

#vagrant
source ./scripts/vagrant.sh

# Set macOS preferences
# We will run this last because this will reload the shell
# source .macos

source ./scripts/open-url.sh
