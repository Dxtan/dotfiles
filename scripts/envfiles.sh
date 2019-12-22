echo "Installing envfiles"

if [ ! -d $HOME/.vim ] ; then
    mkdir $HOME/.vim
fi

if [ ! -d $HOME/.vim/bundle/Vundle.vim ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

envfiles=(
    ".zshrc"
    ".vimrc"
    ".gvimrc"
    ".gitignore"
    ".phpcsfixer"
);

if promptyn "Do you want to restore env files? (Y/n)"; then
    for ((i=0; i < ${#envfiles[@]}; i++))
    do
        rm -rf $HOME/${envfiles[$i]}
        ln -s $RESOURCES/${envfiles[$i]} $HOME/${envfiles[$i]}
        echo "Linking $HOME/${envfiles[$i]} removed and symlinks created"
    done
fi

rm -rf $HOME/.vim/plugins.vim
ln -s $DOTFILES/.vim/plugins.vim $HOME/.vim/plugins.vim
vim +PluginInstall +qall

source $HOME/.zshrc > /dev/null 2>&1
source $HOME/.vimrc > /dev/null 2>&1
source $HOME/.gvimrc > /dev/null 2>&1

touch $HOME/.hushlogin
