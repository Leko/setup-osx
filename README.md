# setup-osx
Set up my OSX for development

[![Build Status](https://travis-ci.org/Leko/setup-osx.svg?branch=master)](https://travis-ci.org/Leko/setup-osx)

## Getting started
```sh
# Install XCode Command Line Tool 
xcode-select --install

# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install ansible
brew doctor
brew update

# Clone 
cd ~
git clone https://github.com/Leko/setup-osx.git setup-osx
cd setup-osx
ansible-playbook localhost.yml -vv -i hosts

# Update 
cd ~/setup-osx
ansible-playbook localhost.yml -vv -i hosts
```

## Languages ([anyenv](https://github.com/riywo/anyenv))
List all languages & versions

```
anyenv versions
```

### Ruby ([rbenv](https://github.com/rbenv/rbenv))

```sh
rbenv          # help
rbenv version  # display current Ruby version
rbenv versions # list installed Ruby versions
```

### PHP ([phpenv](https://github.com/phpenv/phpenv))

```sh
phpen           # help
phpenv version  # display current PHP version
phpenv versions # list installed PHP versions
```

### Go ([goenv]())

```sh
goenv          # help
goenv version  # display current Go version
goenv versions # list installed Go versions
```

### Nodejs (ndenv)

```sh
ndenv          # help
ndenv version  # display current Nodejs version
ndenv versions # list installed Nodejs versions
```
