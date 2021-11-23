# THIS PROGRAM IS MADE BY ARENO | DO REMEMBER , THIS PROGRAM IS MADE BY A DEVELOPER NOT AT ALL BY ROBLOX OFFICIALLY ! YOU CAN EDIT THE FILE ACCORDING TO YOUR SYSTEM !
clear
echo "Roblox For Linux - Installer is starting"
sleep 1
clear
echo "Roblox For Linux - Installer is starting ."
sleep 1
clear
echo "Roblox For Linux - Installer is starting .."
sleep 1
clear
echo "Roblox For Linux - Installer is starting ..."
sleep 1
clear
echo "Roblox For Linux - Installer is starting"
sleep 1
clear
echo "Roblox For Linux - Installer is starting ."
sleep 1
clear
echo "Roblox For Linux - Installer is starting .."
sleep 1
clear
echo "Roblox For Linux - Installer is starting ..."
clear

echo "=================================================================================
                                 Roblox For Linux 

        This is not a file made by Roblox offcially. It's a custom roblox installer,
        for installing roblox on linux.

        You just need to sit back relax. The script will install roblox on your Linux
        distribution.

        NOTE : This installer only works on Debian Based Distros. For downloading on
        Arch or Red Hat distribution, you need to do it manually.

        Thank you !

      ==================================================================================
    "

echo "Installation started ..."

cd

echo "Fixing if any broken packages are there ..."

sudo apt --fix-broken install
sudo apt autoremove
sudo apt install gedit

echo "Ok."

echo "Installing necessary files ..."

sudo apt install python3
sudo apt install git
echo "Ok."

sudo dpkg --add-architecture i386

wget -nc https://dl.winehq.org/wine-builds/winehq.key

sudo apt-key add winehq.key

sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ focal main'


echo "UPDATE IS NOW STARTING DO NOT QUIT THIS PROGRAM !"

sudo apt update
sudo apt upgrade -y

echo "Update Completed."
echo "Ok."

sudo apt install --install-recommends winehq-devel

sudo apt install -y git python3-pip python3-setuptools python3-wheel python3-dev pkg-config libcairo2-dev gtk-update-icon-cache desktop-file-utils xdg-utils libgirepository1.0-dev gir1.2-gtk-3.0

wget --no-check-certificate "https://onedrive.live.com/download?cid=0D1B2C3D089F7FA0&resid=D1B2C3D089F7FA0%21106&authkey=AAsdS8XcgeXp-_c" -O wine-tkg-staging-fsync-git-6.15.r0.g4b6879f3.tar.xz

tar -xf wine-tkg-staging-fsync-git-6.15.r0.g4b6879f3.tar.xz

git clone https://gitlab.com/brinkervii/grapejuice.git

cd grapejuice

python3 ./install.py

echo "DONT QUIT YET ! The program is now going to optimize roblox for better performance."

echo "
Optimizing ...
"
sed '3d' ~/.config/brinkervii/grapejuice/user_settings.json

sed '3 i /home/$(whoami)/wine-tkg-staging-fsync-git-6.15.r0.g4b6879f3/bin/wine' ~/.config/brinkervii/grapejuice/user_settings.json

clear

echo "Installation Completed !"
