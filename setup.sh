#!/usr/bin/env bash
# curl -s "https://raw.githubusercontent.com/alea-institute/alea-python-project-template/v0.1.0/setup.sh" | bash

# download the project template
ZIP_URL="https://github.com/alea-institute/alea-python-project-template/archive/refs/heads/main.zip"

# download the zip file
curl -sL $ZIP_URL -o alea-python-project-template.zip

# unzip it
unzip alea-python-project-template.zip

# now move all files, including dot files, to the current directory
mv alea-python-project-template-main/.* .
mv alea-python-project-template-main/* .

# remove the downloaded zip file and the extracted directory
rm -rf alea-python-project-template.zip alea-python-project-template-main

# remove the setup.sh file
rm setup.sh
