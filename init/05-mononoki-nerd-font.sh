# Rather than include the fonts, here we download and extract them from the website

mkdir -p ~/.fonts
getNerdFont() {
    local variant="${1}"
    e_arrow "Installing font: Mononoki Nerd Font (${variant})"
    curl \
        --silent \
	"https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Mononoki/${variant}/complete/mononoki-${variant}%20Nerd%20Font%20Complete%20Mono.ttf" \
	> "~/.fonts/mononoki-${variant}%20Nerd%20Font%20Complete%20Mono.ttf"
}

getNerdFont "Regular"
getNerdFont "Bold"
