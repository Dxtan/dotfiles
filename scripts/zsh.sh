echo "Installing zsh"


if [ ! -d $HOME/.oh-my-zsh ]; then
	sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"  > /dev/null 2>&1
fi

if [ -d $HOME/.oh-my-zsh ]; then
	rm -rf HOME/.oh-my-zsh/aliases.zsh
	rm -rf HOME/.oh-my-zsh/path.zsh
	ln -s $DOTFILES/aliases.zsh $HOME/.oh-my-zsh/aliases.zsh
	ln -s $DOTFILES/path.zsh $HOME/.oh-my-zsh/path.zsh
fi

if [ ! -d $DOTFILES/oh-my-zsh/plugins/zsh-syntax-highlighting ]; then
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.oh-my-zsh/plugins/zsh-syntax-highlighting
fi

if [ ! -d $DOTFILES/oh-my-zsh/plugins/zsh-autosuggestions ]; then
    git clone git://github.com/zsh-users/zsh-autosuggestions $HOME/.oh-my-zsh/plugins/zsh-autosuggestions
fi
