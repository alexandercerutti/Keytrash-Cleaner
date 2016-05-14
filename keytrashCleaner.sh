#!/bin/sh
# To let it work properly, it must be placed in the usb device root folder.
# Thanks to Stefano Belli
clear
bs=$(basename "$0")
if pwd | grep Volumes >>/dev/null 2>/dev/null; then
	if [ -d ".Trashes" ]; then
		echo "*****************************************************************\n"
		echo "  Welcome into KeytrashCleaner.sh for OS X, an utility that\n  fully delete USB keys trashed files on macs.\n  Please, insert your system password to continue.\n"
		echo "*****************************************************************\n\n"
		sudo chmod -R 777 .Trashes
		echo "\nThank you. Directory permissions changed."
		cd .Trashes

		if [ -d 501 ]; then
			cd 501;
		fi
		echo "Starting file cleaning."
		if [ "$1" != "-q" -a "$1" != "--quite" ]; then
			echo "Files inside the Trash folder:\n"
			ls
			echo
			sudo rm -rfi *
		else
			sudo rm -rf *
		fi
		echo "Done. Setting up folder permissions back."
		if [ -d ../501 ]; then
			cd ../..
		else
			cd ..
		fi
		sudo chmod -R 333 .Trashes
	else
		read -p "Trash folder not found. It seems that the script is not placed in the root folder. Want me to move myself inside up of one folder? [y/n] >> " x
		if echo $x | grep "^[yYsS]"; then
			sudo mv $bs ../
			cd .. ;
			./$bs
		else
			echo "Okay bye.";
		fi
		exit;
	fi
else
	echo "Script is not placed inside a USB drive but inside your pc. Please, move it in the root of your USB key.";
fi
