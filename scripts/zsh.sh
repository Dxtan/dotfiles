echo "Installing zsh"

if [ ! -d $HOME/.oh-my-zsh ]; then
	sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"  > /dev/null 2>&1
fi

if [ ! -d $DOTFILES/.oh-my-zsh/plugins/zsh-syntax-highlighting ]; then
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $DOTFILES/.oh-my-zsh/plugins/zsh-syntax-highlighting
fi

if [ ! -d $DOTFILES/.oh-my-zsh/plugins/zsh-autosuggestions ]; then
    git clone git://github.com/zsh-users/zsh-autosuggestions $DOTFILES/.oh-my-zsh/plugins/zsh-autosuggestions
fi
