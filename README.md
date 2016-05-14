# Keytrash-Cleaner
Utility for Mac OS-formatted USB keys to empty the hidden Trash folder

#####Description

As many OS X users knows, when you delete "permanently" a file placed in a USB Key, it will still take up space. That's because Apple's OS creates an hidden folder called **.Trashes**. So, I made this script to fully empty **.Trashes** folder and fully delete deleted files.

#####Instructions

Download this script, place it inside the root folder of your USB key and move with the terminal to the folder _/Volumes/**USBkey_name**_.
For unix/unix-like terminal rules, if your usb key (or folder) has spaces in its name, you can reach it by these ways:

      /Volumes/SanDisk\ UltraFit \32GB

or

      /Volumes/"SanDisk UltraFit 32GB"

Then execute the script like below. If the script, once executed, will found that it isn't in the root, will ask to move itself a folder up and to execute again.
By default, it will show every file inside .Trashes that are going to be deleted. For each file, it will be asked if the user wants it to be erased [y/n].
You can delete everything _quitely_ by starting the script with the following two parameters:

      ./keytrashCleaner.sh -q

or

      ./keytrashCleaner.sh --quite

**Quite erasing will NOT ask you any confirm.**

Thank you for using my script! :smile:
I want to thanks [Stefano Belli](https://github.com/StefanoBelli) for the help.

######Script screenshot:
Classic mode:
![screen](http://i.imgur.com/P60y3zH.png)
--quite mode:
![screen](http://i.imgur.com/ih6MGvI.png)
