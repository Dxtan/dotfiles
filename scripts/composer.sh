if [ ! -f $HOME/.composer/vendor/bin/laravel ]; then
    /usr/local/bin/composer global require laravel/installer
fi
