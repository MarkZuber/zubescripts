#/bin/sh

# su
# apt install sudo
# usermod -a -G <yourusername>

# sudo nano /etc/apt/sources.list
# add "contrib non-free" to end of repositories


sudo apt-get update
sudo apt-get upgrade

sudo apt-get install -y apt-transport-https ca-certificates curl gnupg2 software-properties-common
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install -y docker-ce
sudo docker run hello-world

sudo groupadd docker
sudo gpasswd -a ${USER} docker
sudo service docker restart

sudo apt-get install -y synaptic apt-xapian-index gdebi gksu
sudo apt-get install -y ttf-freefont ttf-mscorefonts-installer ttf-bitstream-vera ttf-dejavu ttf-liberation
sudo apt-get install -y libreoffice-writer vlc unrar rar handbrake handbrake-gtk gstreamer0.10-plugins* h264enc easytag lame libdvdread4 libdvdcss* soundconverter cuetools shntool

sudo apt-get install -y fonts-firacode git

sudo apt-get install -y ufw
sudo ufw default deny
sudo ufw enable
sudo apt-get install -y gufw

sudo apt-get install -y smbclient
mkdir ~/mnt
mkdir ~/mnt/zubestation
# sudo mount -t cifs -o user=mzuber,password=THEPASSWORDHERE,rw,hard,nosetuids,noperm,sec=ntlm //192.168.2.59/home ~/mnt/zubestation


sudo apt-get install -y libavcodec-extra

sudo apt-get install -y curl libunwind8 gettext
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-ubuntu-zesty-prod zesty main" > /etc/apt/sources.list.d/dotnetdev.list'
sudo apt-get update
sudo apt-get install dotnet-sdk-2.0.0

mkdir ~/dotnet_temp
cd ~/dotnet_temp
dotnet new console -o hwapp
cd hwapp
dotnet run
cd ~
rm -rf ~/dotnet_temp

curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo npm install -g yo
sudo npm install -g generator-aspnetcore-spa
sudo npm install -g generator-aspnet

sudo apt-get install -y golang
sudo apt-get install -y default-jdk

sudo apt-get -y install ssh openssh-server
sudo apt-get install -y povray povray-examples

echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ wheezy main" | \
     sudo tee /etc/apt/sources.list.d/azure-cli.list
sudo apt-key adv --keyserver packages.microsoft.com --recv-keys 417A0893
sudo apt-get install -y apt-transport-https
sudo apt-get update && sudo apt-get install -y azure-cli

sudo apt-get install -y qbittorrent
sudo apt-get install -y terminator
# make this the default editor, terminator is great :D

# from https://github.com/magicmonty/bash-git-prompt
cd ~
git clone https://github.com/magicmonty/bash-git-prompt.git .bash-git-prompt --depth=1

# add the following to ~/.bashrc
# GIT_PROMPT_ONLY_IN_REPO=1
# source ~/.bash-git-prompt/gitprompt.sh


# install virtualbox

# install chrome  (download and run 'sudo gdebi chrome...deb')
# install vs code (download and run 'sudo gdebi code...deb')
# install discord
# install steam
# install blender
# install vagrant (vagrantup.com)


