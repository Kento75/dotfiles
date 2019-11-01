#!bin/sh -ex

### Install Requirement Tools
echo "Install apt-transport-https"
echo ""
sudo apt-get install -y apt-transport-https

### Install Security Tools
echo "Install Security Tools"
echo ""
sudo apt-get install -y clamav

### Install Nodebrew
echo "Install Nodebrew"
echo ""
brew install nodebrew
nodebrew setup
echo "export PATH=$HOME/.nodebrew/current/bin:$PATH" >> ~/.bashrc
source ~/.bashrc
mkdir -p ~/.nodebrew/src



### Install Programing Langage

# Install Nodejs
echo "Install Node"
echo ""
nodebrew install-binary latest
nodebrew install-binary stable
nodebrew use stable

# Install yarn package manager
#brew install yarn --ignore-dependencies
#brew upgrade yarn
#brew uninstall --ignore-dependencies node

# Install OpenJDK(version 8) And Gradle
echo "Install JDK8 And Gradle"
echo ""
brew install java8
export JAVA_HOME="/home/linuxbrew/.linuxbrew/bin/java"
PATH=${JAVA_HOME}/bin:${PATH}
echo "${PATH}" >> ~/.bashrc

sudo apt -y install qemu-kvm adb openjdk-8-jdk openjdk-11-jdk default-jdk 
sudo gpasswd -a "${USER}" kvm

source ~/.bashrc
brew install gradle

# Install Kotlin
echo "Install Kotlin"
echo ""
brew install kotlin
echo 'export PATH=/usr/local/bin/kotlinc/bin:$PATH' >> ~/.bashrc
source ~/.bashrc

# Install Golang
echo "Install Golang"
echo ""
brew install go
echo 'export GOROOT=/usr/local/opt/go/libexec' >> ~/.bashrc
echo 'export GOPATH=$HOME' >> ~/.bashrc
echo 'export PATH=$PATH:$GOROOT/bin:$GOPATH/bin' >> ~/.bashrc
source ~/.bashrc

# Install Composer(useing default PHP7)
echo "Install Composer"
echo ""
brew install composer
composer global require "squizlabs/php_codesniffer=*"
echo 'export PATH=$HOME/.composer/vendor/bin:$PATH' >> ~/.bashrc
source ~/.bashrc



### Install Editer


# Install Vim
echo "Install Vim Editer"
echo ""
sudo apt-get install -y vim

# Install VScode
echo "Install VScode"
echo ""
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get update
sudo apt-get install -y code

# Install Intellij IDEA(CE)
echo "Install Intellij IDEA(CE)"
echo ""
sudo snap install intellij-idea-community --classic

# Install Android Studio



### Install Tools

# Install Google Chrome
echo "Install Google Chrome"
echo ""
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo apt-get update
sudo apt-get install -y google-chrome-stable

# Install tree
echo "Install tree"
echo ""
brew install tree

# Install Docker
echo "Install docker"
echo ""
#brew install docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update
sudo apt-get install -y docker-ce
sudo usermod -aG docker $USER
sudo chown "$USER":"$USER" /home/"$USER"/.docker -R
sudo chmod g+rwx "/home/$USER/.docker" -R
sudo gpasswd -a $USER docker

# Install docker-compose
brew install docker-compose

# Install Kitematic
sudo apt-get install gconf2-common  gconf-service-backend libgconf-2-4 gconf2 gconf-service

wget https://github.com/docker/kitematic/archive/v0.17.9.zip
unzip v0.17.9.zip

cd  kitematic-0.17.9/
make install
# いらないかも↓
npm run build
npm run release:debian:x64
cd dist
sudo dpkg -i Kitematic-0.17.9_amd64.deb

cd ../../
rm -rf ./kitematic-0.17.9
rm -rf ./v0.17.9.zip

# Install Ansible
echo "Install Ansible"
echo ""
brew install ansible

# Install Table Plus
# not support... :p

# Install Sqlectron
echo "Install Sqlectron"
echo "" 
wget https://github.com/sqlectron/sqlectron-gui/releases/download/v1.30.0/Sqlectron_1.30.0_amd64.deb
sudo apt-get install ./Sqlectron_1.30.0_amd64.deb
rm -rf Sqlectron_1.30.0_amd64.deb

echo "Fin"

