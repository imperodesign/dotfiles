# dotfiles ~/.

Repository containing dotfiles and recommended setup instructions for development

## Tools

### Vim

Why aren't you coding with Vim? Vim is the One True Editor. Repent and save yourselves.

```
$ ln -s /path/to/dotfiles/.vim ~/.vim
$ git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
$ vim
$ :PluginInstall
```

### Vagrant

Install Vagrant manually: http://www.vagrantup.com/downloads

## Development setup

### OS X

1. Install **[Homebrew](http://brew.sh)**  
```ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"```

2. Install **[nvm](https://github.com/creationix/nvm)**  
```brew install nvm```

3. Install **Node.js** and **io.js**  
```
nvm install node stable
nvm install iojs latest

# make iojs default
nvm alias default iojs latest
```

4. Install some more tools
```
brew install mongodb
brew install nginx
brew install ansible
```
