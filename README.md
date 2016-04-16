# setup-osx
Set up my OSX for development

[![Build Status](https://travis-ci.org/Leko/setup-osx.svg?branch=master)](https://travis-ci.org/Leko/setup-osx)

## Getting started
```sh
# Install XCode Command Line Tool 
xcode-select --install

# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor
brew update

# Install packages to execute Ansible
brew install python
brew install ansible

# Clone 
cd ~
git clone https://github.com/Leko/setup-osx.git setup-osx
cd setup-osx
ansible-playbook localhost.yml -vv -i hosts
```
