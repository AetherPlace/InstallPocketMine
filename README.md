# InstallPocketMine
InstallPocketMine is a simple script to download and install PocketMine on Windows
Not having a script that installs PocketMine for us, as Linux and Mac OS, made me to come with an idea. This simple script downloads PocketMine with the PHP runtime, then it's done.

## Requirements
On Windows, you need Java 8 to run Geyser; on Linux/MacOS you need wget to get the installer, then you need Java 8 to run Geyser.

## Usage
You only need to execute this command on your Windows machine
```bat
powershell -command Invoke-WebRequest https://raw.githubusercontent.com/AetherPlace/InstallPocketMine/master/pocketmine-dl.bat -OutFile pocketmine-dl.bat && pocketmine-dl.bat
```
Now the installer will clean the old installations and download the latest version of PocketMine. After the installing process, the log should be like this:
```
[*] This installer will install the latest version of PocketMine for Windows
[1/5] Detecting and cleaning old installations...
[2/5] Downloading PocketMine-MP...
[3/5] Downloading start.cmd...
[4/5] Downloading the PHP runtime...
[5/5] Done, PocketMine environment set correctly!
[*] If you want, you can delete the script too.
```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.
