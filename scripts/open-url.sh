links=(
    "https://www.iterm2.com/nightly/latest"  #iterm2-nightly
    "https://1password.com/downloads/mac/" #1password
    "https://www.alfredapp.com/help/v3/" #alfred3
    "https://desktop.github.com/" #GitHub
    "https://github.com/macvim-dev/macvim/releases" #MacVim
    "https://www.getpostman.com/downloads/" #postman
    "https://www.typora.io/" #typora
    "https://www.jetbrains.com/phpstorm/download/#section=mac" #phpstorm
    "https://www.sublimetext.com/3/" #sublime-text
    "https://www.vagrantup.com/downloads.html" #vagrant
    "https://www.virtualbox.org/wiki/Downloads" #virtualbox
    "http://dl.hkcleanmymac.com/CleanMyMacXChinese.dmg" #cleanMyMacX
)

if promptyn "Do you want to open app's download url in Browser? (Y/n)"; then
    for ((i=0; i < ${#links[@]}; i++))
    do
        open ${links[$i]}
    done
fi
