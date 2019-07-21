#!bin/sh -ex

### make base directory
sudo mkdir /usr/local/
sudo mkdir /usr/local/bin/

### Adding PATH
echo 'export PATH=/usr/local:$PATH' >> ~/.bash_profile
echo 'export PATH=/usr/local/bin:$PATH' >> ~/.bash_profile

### Install Xcode devtools
xcode-select --install

### Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
source ~/.bash_profile
brew -v
brew update
brew install caskroom/cask/brew-cask

### Install Nodebrew
brew install-binary nodebrew
nodebrew setup
echo "export PATH=\$HOME/.nodebrew/current/bin:\$PATH" >> ~/.bash_profile
source ~/.bash_profile
mkdir -p ~/.nodebrew/src



### Install Programing Langage

# Install Nodejs
nodebrew install-binary latest
nodebrew use latest

# Install yarn package manager
brew install yarn --ignore-dependencies
brew upgrade yarn
brew uninstall --ignore-dependencies node

# Install OpenJDK(version 11) And Gradle
brew cask install java11
export JAVA_HOME=`/usr/libexec/java_home -v 11`
PATH=${JAVA_HOME}/bin:${PATH}
echo "${PATH}" >> ~/.bash_profile
source ~/.bash_profile
brew install gradle

# Install Kotlin
brew install kotlin
echo 'export PATH=/usr/local/bin/kotlinc/bin:$PATH' >> ~/.bash_profile
source ~/.bash_profile

# Install Golang
brew install go
echo 'export GOROOT=/usr/local/opt/go/libexec' >> ~/.bash_profile
echo 'export GOPATH=$HOME' >> ~/.bash_profile
echo 'export PATH=$PATH:$GOROOT/bin:$GOPATH/bin' >> ~/.bash_profile
source ~/.bash_profile

# Install Composer(useing default PHP7)
brew install composer
composer global require "squizlabs/php_codesniffer=*"
echo 'export PATH=$HOME/.composer/vendor/bin:$PATH' >> ~/.bash_profile
source ~/.bash_profile



### Install Editer

# Install VScode
brew cask install visual-studio-code

# Install Intellij IDEA(CE)
brew cask install intellij-idea-ce

# Install Android Studio
brew cask install android-studio



### Install Tools

# Install Google Chrome
brew cask install google-chrome

# Install tree
brew install tree

# Install Git
brew install git

# Install Slack
brew cask install slack

# Install VirtualBox
brew cask install virtualbox

# Install Vagrant
brew cask install vagrant

# Install Docker
brew cask install docker
docker --version

# Install docker-compose
brew install docker-compose

# Install Kitematic
brew cask install kitematic

# Install Ansible
brew install ansible

# Install Postman
brew cask install postman

# Install Table Plus
brew cask install tableplus


## AWS tools
pip install aws-sam-cli


## AWS Secure Settings

# install git-secrets
brew install git-secrets
git secrets --register-aws --global
git secrets --install ~/.git-templates/git-secrets
git config --global init.templatedir '~/.git-templates/git-secrets'


echo "Fin"
