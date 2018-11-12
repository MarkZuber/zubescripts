sudo apt-get update
sudo apt-get upgrade

sudo apt-get install -y apt-transport-https ca-certificates curl gnupg2 software-properties-common
sudo apt-get update

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update
sudo apt-get install -y docker-ce
sudo usermod -aG docker ${USER} 

# note that to use docker without sudo, user will need to logout and back in

curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get update
sudo apt-get install -y code # or code-insiders

sudo apt-get install -y synaptic apt-xapian-index gdebi gksu
sudo apt-get install -y ttf-freefont ttf-mscorefonts-installer ttf-bitstream-vera ttf-dejavu ttf-liberation
sudo apt-get install -y libreoffice-writer vlc unrar rar handbrake handbrake-gtk gstreamer0.10-plugins* h264enc easytag lame libdvdread4 libdvdcss* soundconverter cuetools shntool

sudo apt-get install -y fonts-firacode git
sudo apt-get install -y smbclient

sudo apt-get install -y libavcodec-extra
sudo apt-get install -y curl libunwind8 gettext

# dotnet core
wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
sudo apt-get install -y apt-transport-https
sudo apt-get update
sudo apt-get install -y dotnet-sdk-2.1

# nodejs/npm/yo
sudo apt-get install -y nodejs
sudu apt-get install -y npm
sudo npm install -g yo

sudo apt-get install -y golang
sudo apt-get install -y ssh openssh-server
sudo apt-get install -y qbittorrent terminator

sudo apt-get install -y python-pip
sudo apt-get install -y python-autopep8
sudo apt-get install -y python3-pip
python3 -m pip install pylint
pip install --upgrade pylint

#sudo snap install kubectl --classic
#echo "source <(kubectl completion bash)" >> ~/.bashrc

#sudo apt install snapd
#sudo snap install lxd
#sudo usermod -a -G lxd $USER
#newgrp lxd
#/snap/bin/lxd init
#sudo snap install conjure-up --classic
/snap/bin/lxc network create lxdbr0 ipv4.address=auto ipv4.nat=true ipv6.address=none ipv6.nat=false
# conjure-up kubernetes

# from https://github.com/magicmonty/bash-git-prompt
cd ~
git clone https://github.com/magicmonty/bash-git-prompt.git .bash-git-prompt --depth=1

# add the following to ~/.bashrc
echo "LS_COLORS='ow=01;36;40'" >> ~/.bashrc
echo "export LS_COLORS" >> ~/.bashrc
echo "GIT_PROMPT_ONLY_IN_REPO=1" >> ~/.bashrc
echo "source ~/.bash-git-prompt/gitprompt.sh" >> ~/.bashrc

git config --global user.email "mark@zube.com"
git config --global user.name "Mark Zuber"
git config --global credential.helper store

# fix the ORANGE and PURPLE in the login screen
#sudo cp ./gdm3.css /etc/alternatives/gdm3.css

curl https://sh.rustup.rs -sSf | sh

sudo apt install plymouth-themes
# there is a step or two missing in here to get the 
# theme itself set.  need to update this
# https://askubuntu.com/questions/994366/updating-splash-screen-ubuntu-17-10
# sudo update-alternatives --config default.plymouth
# sudo update-initramfs -u 
# sudo reboot

# sudo cp -R ./plymouth/cmc_spin /usr/share/plymouth/themes/
# sudo ln -sf /usr/share/plymouth/themes/cmc_spin/cmc.plymouth /etc/alternatives/default.plymouth
# sudo update-initramfs -u -k all
# sudo reboot
