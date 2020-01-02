#Sublime
echo "Installing Preferences"
ln -s  /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl
rm -rf $HOME/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/
ln -s $HOME/.dotfile/Preferences/Sublime $HOME/Library/Application\ Support/Sublime\ Text\ 3/Packages/User