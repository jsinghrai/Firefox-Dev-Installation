#!/bin/bash

# Go to Downloads folder where the file will be downloaded
cd ~/Downloads

printf "There are four steps in installation process: \n"
printf "1. Dowloading the file from Mozilla. \n"
printf "2. Decompressing the file. \n"
printf "3. Move the Application to /usr/local \n"
printf "4. Creating the Desktop file for browser. \n"

read -p 'Please choose which step to begin from (default 1): ' step
step=${step:-1}
if (( step == 1 )); then 
# Download the file from Mozilla's website via wget
printf "Downloading the file from Mozilla. \n"

wget -O Firefox-Dev-Edition-Setup.tar.bz2 "https://download.mozilla.org/?product=firefox-devedition-latest-ssl&os=linux64&lang=en-US"

if [[ $? -ne 0 ]]; then
	printf "Error: There's a problem in downloading file from Mozilla. \n"
 	exit 1
else
	printf "File has been downloaded successfully. \n"
	let "step+=1"
fi
fi

if (( step == 2 )); then
# Decompress the file
printf "Decompressing the file. \n"

tar xjf Firefox-Dev-Edition-Setup.tar.bz2

if [[ $? -ne 0 ]]; then
	printf "Error: There was a problem while decompressing the file. \n"
 	exit 1
else
	printf "File has been decompress successfully. \n"
	let "step+=1"
fi
fi

if (( step == 3 )); then
# Move the Application to /usr/local
printf "Moving the Browser folder to /usr/local/. \n"

sudo mv firefox /usr/local/firefox-dev-edition

if [[ $? -ne 0 ]]; then
	printf "Error: There's a problem in moving the Browser Folder to /usr/local/. \n"
 	exit 1
else
	printf "The folder was moved successfully. \n"
	let "step+=1"
fi
fi

if (( step == 4 )); then
# Create the desktop file to run it without terminal
printf "Creating the desktop file for Browser. \n"

cp ~/Downloads/Firefox-Dev-Installation/firefox-dev-edition.desktop ~/.local/share/applications/

if [[ $? -ne 0 ]]; then
	printf "Error: There's a problem in creating desktop file. \n"
 	exit 1
else
	printf "File has been created successfully. \n"
fi
fi
