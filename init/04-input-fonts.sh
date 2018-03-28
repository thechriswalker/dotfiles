# Rather than include the fonts, here we download and extract them from the website

mkdir ~/.fonts
getInputFont() {
    local variant="${1}"
    tmpdir="$(mktemp -d)"
    pushd "${tmpdir}" >/dev/null
    e_arrow "Installing font: Input${variant}"
    curl \
        --silent \
        "http://input.fontbureau.com/build/?fontSelection=fourStyleFamily&regular=Input${variant}-Light&italic=Input${variant}-LightItalic&bold=Input${variant}-Medium&boldItalic=Input${variant}-MediumItalic&a=0&g=0&i=topserif&l=topserif&zero=0&asterisk=0&braces=straight&preset=default&line-height=1.2&accept=I+do&email=" \
        -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.45 Safari/537.36' \
        -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8' \
        -o font.zip
    unzip -j font.zip
    cp ./*.ttf ~/.fonts/
    popd >/dev/null
    rm -rf "${tmpdir}"
}

getInputFont "Sans"
getInputFont "Mono"
