# add code directories
mkdir -p ~/code/{vendor,personal}

# fzf is the only thing to be installed here
git clone --depth 1 git://github.com/junegunn/fzf.git "~/code/vendor/fzf"

# install
~/code/vendor/fzf/install --all

## install Golang
install_go() {
  local GOURLREGEX='https://dl.google.com/go/go[0-9\.]+\.linux-amd64.tar.gz'
  local url="$(wget -qO- https://golang.org/dl/ | grep -oP 'https:\/\/dl\.google\.com\/go\/go([0-9\.]+)\.linux-amd64\.tar\.gz' | head -n 1 )"
  local latest="$(echo $url | grep -oP 'go[0-9\.]+' | grep -oP '[0-9\.]+' | head -c -2 )"
  wget --quiet --continue --show-progress "${url}"
  sudo tar -C /usr/local -xzf "go${latest}.linux-amd64.tar.gz"
  rm "go${latest}.linux-amd64.tar.gz"
}
install_go


