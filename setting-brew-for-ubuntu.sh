#!bin/sh -ex

### Adding PATH
echo 'export PATH=/usr/local:$PATH' >> ~/.bashrc
echo 'export PATH=/usr/local/bin:$PATH' >> ~/.bashrc
echo ""

### Install Requirements Tools
echo "Install Requirements Tools"
echo ""
sudo apt-get install -y git
sudo apt-get install -y build-essential
sudo apt-get install -y curl
sudo apt-get install -y file
sudo apt-get install -y linuxbrew-wrapper

### Install Linuxbrew
echo "Install Linuxbrew"
echo ""

sudo mkdir /home/linuxbrew/.linuxbrew/bin
sudo mkdir /home/linuxbrew/.linuxbrew/etc
sudo mkdir /home/linuxbrew/.linuxbrew/include
sudo mkdir /home/linuxbrew/.linuxbrew/lib
sudo mkdir /home/linuxbrew/.linuxbrew/sbin
sudo mkdir /home/linuxbrew/.linuxbrew/share
sudo mkdir /home/linuxbrew/.linuxbrew/var
sudo mkdir /home/linuxbrew/.linuxbrew/opt
sudo mkdir /home/linuxbrew/.linuxbrew/share/zsh
sudo mkdir /home/linuxbrew/.linuxbrew/share/zsh/site-functions
sudo mkdir /home/linuxbrew/.linuxbrew/var/homebrew
sudo mkdir /home/linuxbrew/.linuxbrew/var/homebrew/linked
sudo mkdir /home/linuxbrew/.linuxbrew/Cellar
sudo mkdir /home/linuxbrew/.linuxbrew/Caskroom
sudo mkdir /home/linuxbrew/.linuxbrew/Homebrew
sudo mkdir /home/linuxbrew/.linuxbrew/Frameworks
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
echo "export PATH='/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin':$PATH" >> ~/.bashrc
echo 'PATH="$HOME/.linuxbrew/bin:$PATH"' >> ~/.bashrc
echo 'export MANPATH="$(brew --prefix)/share/man:$MANPATH"' >> ~/.bashrc
echo 'export INFOPATH="$(brew --prefix)/share/info:$INFOPATH"' >> ~/.bashrc
echo 'export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"' >> ~/.bash_profile
echo 'export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"' >> ~/.bash_profile

sudo chmod -R 777 /home/linuxbrew/.linuxbrew/bin/
source ~/.bashrc

echo "Fin"
