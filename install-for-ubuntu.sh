#!bin/sh -ex

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
nodebrew install-binary latest
nodebrew install-binary stable
nodebrew use stable

# Install yarn package manager
#brew install yarn --ignore-dependencies
#brew upgrade yarn
#brew uninstall --ignore-dependencies node

# Install OpenJDK(version 8) And Gradle
brew install java8
export JAVA_HOME="/home/linuxbrew/.linuxbrew/bin/java"
PATH=${JAVA_HOME}/bin:${PATH}
echo "${PATH}" >> ~/.bashrc
source ~/.bashrc
brew install gradle

# Install Kotlin
brew install kotlin
echo 'export PATH=/usr/local/bin/kotlinc/bin:$PATH' >> ~/.bashrc
source ~/.bashrc

# Install Golang
brew install go
echo 'export GOROOT=/usr/local/opt/go/libexec' >> ~/.bashrc
echo 'export GOPATH=$HOME' >> ~/.bashrc
echo 'export PATH=$PATH:$GOROOT/bin:$GOPATH/bin' >> ~/.bashrc
source ~/.bashrc

# Install Composer(useing default PHP7)
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

# Install Intellij IDEA(CE)

# Install Android Studio



### Install Tools

# Install Google Chrome

# Install tree
brew install tree

# Install Docker

# Install docker-compose

# Install Kitematic

# Install Ansible
brew install ansible

# Install Table Plus

echo "Fin"
