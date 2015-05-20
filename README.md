# setup
Quick development machine setup for our new team members

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
