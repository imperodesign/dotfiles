# dotfiles ~/.

Repository containing dotfiles and recommended setup instructions for development

# Vim

Why aren't you coding with Vim? Vim is the One True Editor. Repent and save yourselves.  
Open `vim` and type `:PluginInstall`


# Development setup

## OS X

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
