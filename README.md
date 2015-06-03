# dotfiles ~/.

Repository containing recommended dotfiles for your home directory (`~`), and  setup instructions for development tools.

```
git clone git@github.com:imperodesign/dotfiles.git $HOME

ln -s $HOME/dotfiles/.bash_profile $HOME/.bash_profile
ln -s $HOME/dotfiles/.vim $HOME/.vim
```
Take one, take 'em all.


## Development tools

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

### [Homebrew](http://brew.sh) (OS X)

```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

### [NVM](https://github.com/creationix/nvm)

#### OS X
```
brew install nvm
```

#### Ubuntu
```
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.25.4/install.sh | bash
```

### Node.js / io.js
```
nvm install node stable
nvm install iojs latest

# make iojs default
nvm alias default iojs latest
```

### Other
```
brew install mongodb
brew install nginx
brew install ansible
```
