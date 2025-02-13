#!/bin/bash
echo "💣 Python install using pyenv https://github.com/pyenv/pyenv"
echo "💣 Installing pyenv"
brew update
brew install pyenv
echo "" >> ~/.zprofile
echo "# Created by python bomb 💣" >> ~/.zprofile
echo 'eval "$(pyenv init --path)"' >> ~/.zprofile
echo "" >> ~/.zshrc
echo "# Created by python bomb 💣" >> ~/.zshrc
echo 'eval "$(pyenv init -)"' >> ~/.zshrc
source ~/.zshrc
echo "💣 Installing python"
echo "\n 💣 What Python version do you want? (default: 3.13.2)"
read version
version="${version:=3.13.2}"
pyenv install $version
pyenv global $version
exec zsh -l
echo "💣 This should be /Users/youruser/.pyenv/shims/python. Restart your terminal otherwise."
which python
