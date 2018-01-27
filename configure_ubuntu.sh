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

sudo apt-get install -y synaptic apt-xapian-index gdebi gksu
sudo apt-get install -y ttf-freefont ttf-mscorefonts-installer ttf-bitstream-vera ttf-dejavu ttf-liberation
sudo apt-get install -y libreoffice-writer vlc unrar rar handbrake handbrake-gtk gstreamer0.10-plugins* h264enc easytag lame libdvdread4 libdvdcss* soundconverter cuetools shntool

sudo apt-get install -y fonts-firacode git
sudo apt-get install -y smbclient

sudo apt-get install -y libavcodec-extra
sudo apt-get install -y curl libunwind8 gettext

curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-ubuntu-artful-prod artful main" > /etc/apt/sources.list.d/dotnetdev.list'

sudo apt-get update
sudo apt-get install dotnet-sdk-2.1.4

curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo npm install -g yo

sudo apt-get install -y golang
sudo apt-get install -y ssh openssh-server
sudo apt-get install -y qbittorrent terminator

sudo snap install kubectl --classic
echo "source <(kubectl completion bash)" >> ~/.bashrc


sudo apt install snapd
sudo snap install lxd
sudo snap install conjure-up --classic
# sudo lxd init --auto
# /snap/bin/lxc network create lxdbr0 ipv4.address=auto ipv4.nat=true ipv6.address=none ipv6.nat=false
# conjure-up kubernetes

# from https://github.com/magicmonty/bash-git-prompt
cd ~
git clone https://github.com/magicmonty/bash-git-prompt.git .bash-git-prompt --depth=1

# add the following to ~/.bashrc
# LS_COLORS='ow=01;36;40'
# export LS_COLORS
# GIT_PROMPT_ONLY_IN_REPO=1
# source ~/.bash-git-prompt/gitprompt.sh
