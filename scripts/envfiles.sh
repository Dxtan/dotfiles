rm -rf $HOME/.vimrc
ln -s $HOME/.dotfiles/.vimrc $HOME/.vimrc
rm -rf $HOME/.gvimrc
ln -s $HOME/.dotfiles/.gvimrc $HOME/.gvimrc
if [ ! -d $HOME/.vim ] ; then
    mkdir $HOME/.vim
fi
