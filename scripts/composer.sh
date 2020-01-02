echo "Installing composer"

if [ ! -f $HOME/.composer/vendor/bin/php-cs-fixer ]; then
	composer config -g repo.packagist composer https://packagist.phpcomposer.com
    /usr/local/bin/composer global require friendsofphp/php-cs-fixer
fi
