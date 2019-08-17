#!/bin/bash

# Install the software requirements

echo "${_GREEN}INSTALL DEPENDS STARTED${_RESET}"

if [ "$_APT_DEPENDS" -eq "1" ]; then

	# Install depends (python 2)
        sudo apt install -y git python python-pip python-requests python-six python-colorama python-unidecode python-openssl 

fi

echo "${_CYAN}INSTALL DEPENDS STOPPED${_RESET}"
