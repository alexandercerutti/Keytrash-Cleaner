# Keytrash-Cleaner
Utility for USB keys to empty the hidden Trash folder created by OS X

### Description

As many OS X users knows, when you delete "permanently" a file placed in a USB Key, it will still take up space. That's because the Apple's OS creates an hidden folder called **.Trashes** that is linked to OS X trash folder on usb connection: to delete those files, you have to empty the main mac trash. I don't like this way, so I made this script to let a fully emptying of that **.Trashes** folder and fully delete 'deleted' files.

### Instructions

Download this script, place it inside the root folder of your USB key and move with the terminal to the folder _/Volumes/**USBkey_name**_.
For unix/unix-like terminal rules, if your usb key (or folder) has spaces in its name, you can reach it by these ways:

```sh
cd /Volumes/SanDisk\ UltraFit \32GB
```

or
```sh
cd /Volumes/"SanDisk UltraFit 32GB"
```

Then execute the script like below. If the script, once executed, will found that it isn't in the root, will ask to move itself a folder up and to execute again.
By default, it will show every file inside .Trashes that are going to be deleted. For each file, it will be asked if the user wants it to be erased [y/n].
You can delete everything _quitely_ by starting the script with the following two parameters:

```sh
./keytrashCleaner.sh -q
```
or
```sh
./keytrashCleaner.sh --quite
````

**Quite erasing will NOT ask you any confirm.**

Thank you for using my script! :smile:
I want to thanks [Stefano Belli](https://github.com/StefanoBelli) for the help.

###### Script screenshot:
Classic mode:

![screen](http://i.imgur.com/P60y3zH.png)

--quite mode:

![screen](http://i.imgur.com/ih6MGvI.png)
