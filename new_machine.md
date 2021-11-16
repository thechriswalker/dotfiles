# stuff I do on a new installation

## from this repo use the `install.sh`

to symlink the various directorys / dotfiles
```
.vim
.gitconfig
.zshrc
.exports
.functions
```

Remember to grab the `.ssh` and `.gnupg` from the previous installation. (I did save it, right?)

Also anything from `.exports.local` or `.functions.local` if they were present.


# ZFS mount by default.

The new dataset for all my data should be created and a new encryption key made for it.
If the disk is still present from a previous install, then just make sure the key is available
and that it will mount on boot.

## simple things not installed by default

```sh
sudo apt install curl build-essential git guake tilix zsh
```

## guake / tilix

guake needs to launch at login, and manual F12 binding to `/usr/bin/guake-toggle`

tilix for the x-terminal-emulator

```
sudo update-alternatives --config x-terminal-emulator
```

disable the "Hide all normal windows" keyboard shortcut `Ctl-Alt-D` so tilix split works.

change guake shortcuts for split to `Ctl-Alt-R/D`

## zsh / oh-my-zsh

```
git clone git://github.com/robbyrussell/oh-my-zsh.git "${HOME}/.oh-my-zsh"
ZSH_CUSTOM="${HOME}/.oh-my-zsh/custom"
git clone git://github.com/denysdovhan/spaceship-prompt.git \
  "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" \
  "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
git clone git://github.com/zdharma-continuum/fast-syntax-highlighting.git \
  "$ZSH_CUSTOM/plugins/fast-syntax-highlighting"
```

## bat

install from https://github.com/sharkdp/bat/releases via .deb package


## syncthing 

```sh
sudo curl -s -o /usr/share/keyrings/syncthing-archive-keyring.gpg https://syncthing.net/release-key.gpg
echo "deb [signed-by=/usr/share/keyrings/syncthing-archive-keyring.gpg] https://apt.syncthing.net/ syncthing stable" | sudo tee /etc/apt/sources.list.d/syncthing.list
sudo curl -s -o /usr/share/keyrings/syncthing-archive-keyring.gpg https://syncthing.net/release-key.gpg
sudo apt update
sudo apt install syncthing
# copy syncthing config (or register as new)
sudo systemctl enable syncthing@chris.service
```

## chrome

download, then install `sudo dpkg -i Downloads/firefox.tmp/google<tab>`

## vscode


## golang


## node / yarn

download from nodejs.org


```
chown chris:chris -R /usr/local
tar -xvf ~/Downloads/node*.tar.xz --strip-components=1 --directory=/usr/local
npm -g install yarn
yarn global add n
```

add `yarn global bin` to `$PATH`

```
n install latest
```


## flameshot / kazaam




# gnome and extensions

- Use the `Extensions` app (pre-installed) to disable the desktop icons and dock.
- Clock Override (https://extensions.gnome.org/extension/1206/clock-override/) hasn't been updated to support Gnome40 but I may just make my own less flexible tool
- Pop Shell needs building explicitly https://github.com/pop-os/shell
- Screenshot location  https://extensions.gnome.org/extension/1179/screenshot-locations/
- Resource Monitor (No Gnome 40 support yet, but is worked on) https://extensions.gnome.org/extension/1634/resource-monitor/
- Sound and Input device chooser https://extensions.gnome.org/extension/906/sound-output-device-chooser/
- caffeiene https://extensions.gnome.org/extension/517/caffeine/

