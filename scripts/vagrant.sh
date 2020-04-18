if promptyn "Do you want to install homestead (Y/n)?"; then
    if [ ! -d $HOME/Homestead ]; then
        git clone https://github.com/Dxtan/Homestead.git $HOME/Code/Homestead
        cd $HOME/Code/Homestead
        git checkout release
        git remote add upstream https://github.com/laravel/homestead.git
        git fetch -p && git merge upstream/release
        chmod 775 $HOME/Code/Homestead/init.sh
        sh $HOME/Code/Homestead/init.sh
        vagrant up
        cd $DOTFILES
    fi
fi
