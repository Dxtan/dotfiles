rm -rf $HOME/.zshrc
ln -s $RESOURCES/.zshrc $HOME/.zshrc
rm -rf $HOME/.vimrc
ln -s $RESOURCES/.vimrc $HOME/.vimrc
rm -rf $HOME/.gvimrc
ln -s $RESOURCES/.gvimrc $HOME/.gvimrc

if [ ! -d $HOME/.vim ] ; then
    mkdir $HOME/.vim
fi
