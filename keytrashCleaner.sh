#!/bin/sh
# To let it work properly, it must be placed in the usb device root folder.
CURR_PATH=`pwd`
if [ $CURR_PATH =~ "Volumes" ]; then
	if [ -d ".Trashes" ]; then
		echo "Trash folder found. Goin' on."
		echo "*****************************************************************"
		echo "* INSERT YOUR SYSTEM PASSWORD AND PRESS ENTER, PLEASE.		*"
		echo "*****************************************************************"
		sudo chmod -R 777 .Trashes
		echo ">> Thank you. Directory permissions changed."
		cd .Trashes

		if [ -d 501 ]; then
			cd 501;
		fi
		echo "Starting file cleaning"
		if [ "$1" == "-c" ]; then
			echo ">> Files inside the Trash folder:"
			echo
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
		read -p "Trash folder not found. It seems that the script is not placed in the root folder. Want me to move myself inside up of one folder? (y/n)" x;
		if [ x in [yY][sS] ]; then
			sudo mv keytrash_cleaner.sh ../
			cd .. ;
			./keytrash_cleaner.sh
		else
			echo "Okay bye.";
		fi
		exit;
	fi
else
	echo "Script is not places inside a USB device but inside your pc. Please, move it in the root of your USB key.";
fi
