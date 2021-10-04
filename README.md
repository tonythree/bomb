# 💣Bomb
## What is 💣Bomb ?
Bomb is a simple collection of shell scripts (bombs) to install developer tools on your mac in a simple and easy way, trying to follow best practices. It is highly opinionated.

 It also automatically adds stuff to your .zshrc and .zprofile files, asks for input etc. So after running a bomb, you are good to go.

Tested on my Macbook Air M1 2021.

Important! Use at your own risk. I created this for myself to setup new computers for developers in an easy way. 

It works on my machine, but check the code before running anything.

## List of 💣Bombs
```sh
#001 - Permanently show hidden files on mac
sh show-hidden-files.sh

#002 - Brew
sh brew.sh

#003 - Git
sh git.sh

#004 - Test Git
sh git-test.sh

#005 - Custom Terminal prompt using zsh-git-prompt
sh zsh-git-prompt.sh

#006 - Javascript (node, nvm, npm)
sh javascript.sh

#007 - Python 3 (requires brew.sh)
sh python.sh

#008 - AWS CLI v2 + configure
sh aws.sh

#009 - Serverless Framework (requires npm.sh)
sh serverless.sh
```

