echo "Installing envfiles"

if [ ! -d $HOME/.vim ] ; then
    mkdir $HOME/.vim
fi

envfiles=(
    ".zshrc"
    ".vimrc"
    ".vim/plugins.vim"
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

source $HOME/.zshrc > /dev/null 2>&1
source $HOME/.vimrc > /dev/null 2>&1
source $HOME/.gvimrc > /dev/null 2>&1

touch $HOME/.hushlogin
