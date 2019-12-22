vagrant box add laravel/homestead

git clone https://github.com/Dxtan/Homestead.git $HOME/Homestead
cd $HOME/Homestead
git checkout release

git remote add upstream https://github.com/laravel/homestead.git
git merge upstream/release

chmod 775 $HOME/Homestead/init.sh
