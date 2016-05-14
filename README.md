# Keytrash-Cleaner
Utility for Mac OS-formatted USB keys to empty the hidden Trash folder

#####Description

As many OS X users knows, when you delete "permanently" a file placed in a USB Key, it will still take up space. That's because Apple's OS creates an hidden folder called **.Trashes**. So, I made this script to fully empty **.Trashes** folder and fully delete deleted files.

#####Instructions

Download this script, place it inside the root folder of your USB key and move with the terminal to the folder _/Volumes/**your_USBkey_name**_. Then execute the script like below. If the script, once executed, will found that it isn't in the root, will ask to move itself a folder up and to execute again.
By default, it will show every file inside .Trashes that are going to be deleted. For each file, it will be asked if the user wants it to be erased [y/n].
You can delete everything _quitely_ by starting the script with the following two parameters:

      ./keytrashCleaner.sh -q

or

      ./keytrashCleaner.sh --quite

**Quite erasing will NOT ask you anything.**

Thank you for using my script! :smile:
I want to thanks _Stefano Belli_ for the help.
