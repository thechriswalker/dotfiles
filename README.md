# dotfiles collection

Simple dotfiles collection and bootstrapping code

The bootstrap code is intended to be run on a pretty much blank machine.

```
sudo apt install git
git clone git://github.com/thechriswalker/dotfiles ./dotfiles
cd dotfiles
./bootstrap.sh
```

## Other useful apps to install

```
sudo apt install \
  gnome-tweak-tool \
  inkscape \
  cheese \
  mercurial \
  tmux \
  vim \
  vlc \
  zsh \
  syncthing \
  keepassxc
```

## Apt repos for other software

Some require GPG keys which I have exported to `apt-trusted.keys`

so
```
sudo apt-key add ./apt-trusted.keys
```

then

```
cp -a ./apt-sources.d/*.list /etc/apt/sources.list.d/
sudo apt update
sudo apt install \
  google-chrome \
  yarn \
  mopidy \
  code
```

## The manual stuff (to remember, could be automated I gues...)

 - Golang (from website)
 - NodeJS (always do a manual install, then `yarn add -G n` and `n latest`


