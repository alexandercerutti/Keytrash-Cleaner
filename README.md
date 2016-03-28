# Keytrash-Cleaner
Utility for OS X to clean USB keys Trash (hidden) folder

#####Description

As many OS X users knows, when you delete "permanently" a file placed in a USB Key, it will still take up space. That's because Apple's OS creates in Mac OS formatted keys, an hidden folder called .Trashes / 501. So, I made this script to delete this Trash folder content easily.

#####Instructions

Download this script, place it inside the root folder of your USB key and move with the terminal to the folder _/Volumes/**your_USBkey_name**_. Then execute the script like below. If the script, once executed, will found that it isn't in the root, will ask to move itself a folder up and to execute itself again.
You can ask the script to show every file found in the trash folder, and choose if you want to deleted them. How? Execute the script with the parameter **-c**, like this:

      ./keytrashCleaner.sh -c

Thank you for using my script! :smile:
