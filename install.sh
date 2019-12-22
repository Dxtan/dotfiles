#!/bin/sh

echo "Setting up your Mac now..."

#Git
if test ! $(which git); then
  xcode-select --install
fi

#Homebrew
if test ! $(which brew); then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Install all our dependencies with bundle (See Brewfile)
# brew tap homebrew/bundle
# brew bundle

#zsh
if [ ! -d $HOME/.oh-my-zsh ]; then
    sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
    git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
fi

# Install global Composer packages
if [ ! -f $HOME/.composer/vendor/bin/laravel ]; then
    /usr/local/bin/composer global require laravel/installer
fi

# Install Laravel Valet
# $HOME/.composer/vendor/bin/valet install

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
rm -rf $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc
rm -rf $HOME/.vimrc
ln -s $HOME/.dotfiles/.vimrc $HOME/.vimrc
rm -rf $HOME/.gvimrc
ln -s $HOME/.dotfiles/.gvimrc $HOME/.gvimrc
if [ ! -d $HOME/.vim ] ; then
    mkdir $HOME/.vim
fi

# Symlink the Mackup config file to the home directory
rm -rf $HOME/.mackup.cfg
ln -s $HOME/.dotfiles/.mackup.cfg $HOME/.mackup.cfg

# Set macOS preferences
# We will run this last because this will reload the shell
# source .macos

echo 'Done!';
