#!/bin/bash
echo "Enter a folder name:";
read folder_name
fn=$folder_name

if [ -d "$fn" ]; then
	echo "Folder '$fn' already exists.";
else
	mkdir "$fn"
	if [ $? -eq 0 ]; then
	     echo "Folder '$fn' created successfully.";
	else 
	     echo " failed to create folder '$fn'.";
	     exit 1
	fi
fi
