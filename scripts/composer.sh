echo "Installing composer"

if [ ! -f $HOME/.composer/vendor/bin/laravel ]; then
	composer config -g repo.packagist composer https://packagist.phpcomposer.com
    /usr/local/bin/composer global require laravel/installer
fi
