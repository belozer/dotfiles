sudo add-apt-repository ppa:neovim-ppa/stable -y
sudo add-apt-repository ppa:webupd8team/terminix -y
sudo add-apt-repository ppa:mkusb/ppa -y

sudo apt-get update

sudo apt-get install gdebi -y
sudo apt-get install zsh -y
sudo apt-get install git -y
sudo apt-get install curl -y
sudo apt-get install wget -y
sudo apt-get install software-properties-common -y
sudo apt-get install tilix -y
sudo apt-get install neovim -y
sudo apt-get install mkusb -y
sudo apt-get install xclib -y
sudo apt-get install ubuntu-restricted-extras -y
sudo apt-get install python-dev python-pip python3-dev python3-pip -y


# Docker
wget -qO- https://get.docker.com/ | sh

# VTE for tilix
sudo ln -s /etc/profile.d/vte-2.91.sh /etc/profile.d/vte.sh

