install_app () {
    local $name="${1}"
    e_arrow "installing snap: ${name}"
    sudo snap install "${name}"
    if [ $? -eq 0 ]
    then
        e_success "installed: ${name}"
    else
        e_error "failed to install: ${name}"
    fi
}

# obviously important
install_app minecraft

# SVG FTW
install_app inkscape

# probably will need this.
install_app docker

# and this for sure
install_app aws-cli

# this is for my blog
install_app hugo

# this is for keepass
install_app syncthing

# and here is keepassxc
install_app keepassxc

# easier than worrying about insiders
install_app vscode
