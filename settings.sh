#!/bin/bash

echo "${_GREEN}LOADING DEFAULT SETTINGS${_RESET}"

# Set working directory
_WORK_DIR="$(pwd)"
cd $_WORK_DIR

# -k --cookies
_UDEMY_ACCESS_TOKEN="jfEGEDlmFYvS9MqH6fIfZsTz26nNqlsZvLrR42wU"

_UDL_ACCESS_TOKEN_FILE="cookies.txt"

_UDL_ACCESS_TOKEN_LOCATION="$_WORK_DIR/$_UDL_ACCESS_TOKEN_FILE"

# COURSE_URL File containing list of course URLS
_UDL_INPUT_FILE="courses.txt"

_UDL_INPUT=`cat $_UDL_INPUT_FILE`

# path to download courses to
_UDL_OUTPUT_FOLDER="download"

_UDL_OUTPUT_LOCATION="$_WORK_DIR/$_UDL_OUTPUT_FOLDER"

# Download subtitles 0 = NO 1 = YES (default)
_UDL_SKIP_SUB="1"

# Install dependencies 0 = NO (default) 1 = YES
_APT_DEPENDS="1"

# Run apt maintenance 0 = NO 1 = YES (default)
_APT_MAINTENANCE="1"

# Set working directory
_WORK_DIR="$(pwd)"
cd $_WORK_DIR

_UDL_REPO="https://github.com/r0oth3x49/udemy-dl.git"

_UDL_CLONE="udemy-dl"

_UDL_CLONE_LOCATION="$_WORK_DIR/$_UDL_CLONE"

_UDL_BRANCH="master"


echo "${_CYAN}DEFAULT SETTINGS LOADED${_RESET}"
