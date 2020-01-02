if promptyn "Do you want to restore Sublime preferences (Y/n)?"; then
	if [ ! -d $HOME/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Package\ Control.cache ]; then
		echo "Installing Sublime Preferences"
		ln -s  /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl
		rm -rf $HOME/Library/Application\ Support/Sublime\ Text\ 3/Packages/User
		ln -s $HOME/.dotfiles/Preferences/Sublime $HOME/Library/Application\ Support/Sublime\ Text\ 3/Packages/User
	fi
fi
