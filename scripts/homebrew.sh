echo "Installing homebrew"

if test ! $(which brew); then
    /usr/bin/ruby -e "$(curl -fsSL https://cdn.jsdelivr.net/gh/ineo6/homebrew-install/install)"
  #/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Install all our dependencies with bundle (See Brewfile)
# brew tap homebrew/bundle
# brew bundle --file=resources/Brewfile

rm -rf "$(brew --cache)"

if [ -d /Applications/MacVim.app  ]; then
    ln -s /Applications/MacVim.app/Contents/bin/mvim /usr/local/bin/mvim
fi
