#!/usr/bin/env bash
# This is a new system setup, assumes that you have only installed git

source ./utils

# Run all of `init/`
# Symlink all of `link/` into `${HOME}`
# Copy all of `copy/` into `${HOME}`
BASEDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

for f in $(ls -1 ./copy)
do
    e_arrow "Copying: $f"
    cp -a "${BASEDIR}/copy/$f" "${HOME}/.$f"
done

for f in $(ls -1 ./link)
do
    e_arrow "Linking: $f"
    ln -si "${BASEDIR}/link/$f" "${HOME}/.$f"
done

for f in $(ls -1 ./init)
do
    e_header "Sourcing: $f"
    source ./init/$f
done

