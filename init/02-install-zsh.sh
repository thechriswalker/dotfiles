e_arrow "get tooling..."
# ensure tooling
sudo apt install -y git zsh curl

# change default shell
e_arrow "change default shell..."
chsh -s /bin/zsh

# clone
e_arrow "clone oh-my-zsh"
git clone git://github.com/robbyrussell/oh-my-zsh.git "${HOME}/.oh-my-zsh"

e_arrow "get zsh theme: spaceship"
ZSH_CUSTOM="${HOME}/.oh-my-zsh/custom"
git clone git://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

e_success "ZSH and theme installed: '.zshrc' will be installed in the symlink phase"


