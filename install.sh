#!/bin/bash

# Colors
_CYAN=`tput setaf 1`
_GREEN=`tput setaf 2`
_YELLOW=`tput setaf 3`
_BLUE=`tput setaf 4`
_MAGENTA=`tput setaf 5`
_CYAN=`tput setaf 6`
_RESET=`tput sgr0`

echo "${_GREEN}INSTALLATION STARTED${_RESET}"

_DEBUG=$1

if $_DEBUG; then
	set +x
else
	set -x
fi

# Set that user passwdless sudo
if sudo grep -q $USER /etc/sudoers.d/README; then
        echo -e "User $USER found in /etc/sudoers.d/README. All good!!\n"
else
        echo -e "$USER does not have passwdles sudo. Fixing that!!\n"
        echo "$USER     ALL=(ALL) NOPASSWD:ALL" | sudo tee -a /etc/sudoers.d/README
fi

# Get settings
. settings.sh
sleep 5

# Update system
. maintenance.sh
sleep 5

# Install dependencies
. depends.sh
sleep 5

# Get source and build
. build.sh
sleep 5


echo "${_CYAN}INSTALLATION COMPLETED${_RESET}"

