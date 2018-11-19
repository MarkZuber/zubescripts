#/bin/sh

sudo apt-get update
sudo apt-get upgrade

# install winbind and support lib to ping WINS hosts
sudo apt install -y winbind libnss-winbind
# need to append to the /etc/nsswitch.conf file to enable if not already done ...
if ! grep -qc 'wins' /etc/nsswitch.conf ; then
  sudo sed -i '/hosts:/ s/$/ wins/' /etc/nsswitch.conf
fi

# set the DISPLAY variable to point to the XServer running on our Windows PC
echo >> ~/.bashrc
echo "export DISPLAY=:0" >> ~/.bashrc

sudo apt-get install -y curl libunwind8 gettext
# dotnet core
wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
sudo apt-get install -y apt-transport-https
sudo apt-get update
sudo apt-get install -y dotnet-sdk-2.1

sudo apt-get install -y nodejs
sudu apt-get install -y npm
sudo npm install -g yo

sudo apt-get install -y golang
sudo apt-get install -y default-jdk
sudo apt-get install -y screenfetch x11-utils cmake

sudo apt-get -y install ssh openssh-server
sudo apt-get install -y povray povray-examples

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



