#!/bin/bash

BASEDIR=$(dirname "$(readlink -f "$0")")

SUCCESS=0

function install_file {
	local src="${BASEDIR}/${1}"
	local dst="${HOME}/.${1}"

	if [ -e $dst ];
	then
		ldst="$(readlink -f "${dst}")"
		if [ "${ldst}" == "${src}" ];
		then
			echo "link exists and is correct"
		else 
			echo "link exists, but points to: $ldst"
			SUCCESS=$(($SUCCESS + 1))
		fi
	else
		if ln -s ${src} ${dst}
		then
			echo "installed: $dst"
		else
			echo "failed to link: $src -> $dst"
			SUCCESS=$((SUCCESS +1))
		fi
	fi
}


install_file "zshrc"
install_file "exports"
install_file "functions"

exit $SUCCESS
