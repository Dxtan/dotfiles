echo "Installing envfiles"

if [ ! -d $HOME/.vim ] ; then
    mkdir $HOME/.vim
fi

rm -rf $HOME/.zshrc
ln -s $RESOURCES/.zshrc $HOME/.zshrc

rm -rf $HOME/.vimrc
ln -s $RESOURCES/.vimrc $HOME/.vimrc

rm -rf $HOME/.vim/plugins.vim
ln -s $DOTFILES/.vim/plugins.vim $HOME/.vim/plugins.vim

rm -rf $HOME/.gvimrc
ln -s $RESOURCES/.gvimrc $HOME/.gvimrc

source $HOME/.zshrc > /dev/null 2>&1
source $HOME/.vimrc > /dev/null 2>&1
source $HOME/.gvimrc > /dev/null 2>&1
