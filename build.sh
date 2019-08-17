#!/bin/bash

echo "${_GREEN}BUILD STARTED${_RESET}"

# Clone source
if [ -d "$_UDL_CLONE_LOCATION" ]; then

        # Change to clone directory
        cd $_UDL_CLONE

        if git branch | grep -q -m1 "* $_UDL_BRANCH"; then
                # Pull changes from source
                git pull

        else
                # Switch to required branch
                git checkout $_UDL_BRANCH

                # Pull changes from source
                git pull

		# Call function
		pip install -r $_UDL_CLONE_LOCATION/requirements.txt

        fi
else

        # Clone the source
        git clone $_UDL_REPO $_UDL_CLONE

        # Change to clone directory
        cd $_UDL_CLONE

        # Fetch list of branches in origin
        git branch -a

        # Checkout required branch
        git checkout $_UDL_BRANCH

	# Call function
	pip install -r $_UDL_CLONE_LOCATION/requirements.txt

fi

cd $_WORK_DIR

touch $_UDL_ACCESS_TOKEN_FILE

echo "access_token=$_UDEMY_ACCESS_TOKEN" | tee $_UDL_ACCESS_TOKEN_FILE

mkdir $_UDL_OUTPUT_FOLDER

touch $_UDL_INPUT_FILE

ln -s $_UDL_CLONE_LOCATION/udemy-dl.py udemy-dl.py

echo "${_CYAN}BUILD STOPPED${_RESET}"
