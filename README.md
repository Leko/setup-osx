# setup-osx
Set up my OSX for development

[![Build Status](https://travis-ci.org/Leko/setup-osx.svg?branch=master)](https://travis-ci.org/Leko/setup-osx)

## Tested os versions
- `10.10` (Yosemite)
- `10.11` (El Capitan)

## Getting started
```sh
# Install XCode Command Line Tool 
xcode-select --install
sudo xcode-select --switch /Library/Developer/CommandLineTools/

# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install ansible
brew doctor

# Clone 
cd ~
git clone https://github.com/Leko/setup-osx.git setup-osx
cd setup-osx
echo 'YOUR_USER_PASSWORD' > secret
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

## Other

### Brew components
```sh
brew list
```

### Applications
```sh
brew cask list | grep -v font # without fonts
```

### Fonts
```sh
brew cask list | grep font
```
