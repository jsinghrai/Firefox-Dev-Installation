# Firefox-Dev-Installation
Firefox Dev Edition Installation script for Ubuntu/Debian based distros.

## Getting Started
Follow the instructions in Installing portion to install Firefox Developer Edition in Ubuntu/Debian.

This script is created using information I gathered from: 
https://linuxconfig.org/how-to-install-latest-firefox-browser-on-debian-9-stretch-linux
https://tecadmin.net/install-firefox-developer-edition-on-ubuntu/
 
### Installing
```
cd ~/Downloads
git clone https://github.com/jsinghrai/Firefox-Dev-Installation.git
cd Firefox-Dev-Installation
chmod +x firefox-dev-install.sh
./firefox-dev-install.sh
```
Choose the step where to begin from, default is 1 so just press enter if you are running it the first time.
In case it fails, remember the step it failed and begin from that step.

### Uninstalling
```
rm ~/.local/share/applications/firefox-dev-edition.desktop
sudo rm -r /usr/local/firefox-dev-edition
```

Don't forget to delete the Firefox Dev profile from your computer otherwise your bookmarks, history and addons data will still be stored on your computer.

You can find your profile in:
```
/home/$USER/.mozilla/firefox/
/home/$USER/.cache/mozilla/firefox/
```
Delete the folder in each of these directory called something dot dev-edition-default.
