if promptyn "Do you want to install homestead (Y/n)?"; then
    if [ ! -d $HOME/.vagrant.d/boxes/laravel-VAGRANTSLASH-homestead ]; then
        vagrant box add laravel/homestead
    fi

    if [ ! -d $HOME/Homestead ]; then
        git clone https://github.com/Dxtan/Homestead.git $HOME/Homestead
        cd $HOME/Homestead
        git checkout release
        git remote add upstream https://github.com/laravel/homestead.git
        git fetch -p && git merge upstream/release
        chmod 775 $HOME/Homestead/init.sh
        cd $DOTFILES
    fi
fi
