#!/bin/bash

echo "${_GREEN}DOWNLOAD STARTED${_RESET}"

# Reload settings and functions for when running standalone
. settings.sh

echo "$_UDL_INPUT"

if [ "$_UDL_SKIP_SUB" -eq "1" ]; then

	for item in $_UDL_INPUT; do
		python udemy-dl.py "$item" -k "$_UDL_ACCESS_TOKEN_LOCATION" -o "$_UDL_OUTPUT_LOCATION"
	done

else

	for item in $_UDL_INPUT; do
                python udemy-dl.py "$item" --skip-sub -k "$_UDL_ACCESS_TOKEN_LOCATION" -o "$_UDL_OUTPUT_LOCATION"
        done

fi

