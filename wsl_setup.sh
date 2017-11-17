#/bin/sh

sudo apt-get update
sudo apt-get upgrade

sudo apt-get install -y curl libunwind8 gettext
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-ubuntu-xenial-prod xenial main" > /etc/apt/sources.list.d/dotnetdev.list'
sudo apt-get update
sudo apt-get install dotnet-sdk-2.0.2

curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo npm install -g yo

sudo apt-get install -y golang
sudo apt-get install -y default-jdk

sudo apt-get -y install ssh openssh-server
sudo apt-get install -y povray povray-examples

echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ wheezy main" | sudo tee /etc/apt/sources.list.d/azure-cli.list
sudo apt-key adv --keyserver packages.microsoft.com --recv-keys 52E16F86FEE04B979B07E28DB02C46DF417A0893
sudo apt-get install -y apt-transport-https
sudo apt-get update && sudo apt-get install -y azure-cli

# from https://github.com/magicmonty/bash-git-prompt
cd ~
git clone https://github.com/magicmonty/bash-git-prompt.git .bash-git-prompt --depth=1

# add the following to ~/.bashrc
# LS_COLORS='ow=01;36;40'
# export LS_COLORS
# GIT_PROMPT_ONLY_IN_REPO=1
# source ~/.bash-git-prompt/gitprompt.sh



