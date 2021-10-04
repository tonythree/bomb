#!/bin/bash
echo "💣 Git init"
echo "💣 Enter your email"
read EMAIL
ssh-keygen -t rsa -b 4096 -C "$EMAIL"
eval "$(ssh-agent -s)"
touch ~/.ssh/config
echo "Host *
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_rsa" >> ~/.ssh/config
ssh-add -K ~/.ssh/id_rsa
pbcopy < ~/.ssh/id_rsa.pub
echo "💣 I copied the public key in your clipboard. You need to create a new Redirecting to Github"
read -p "Do you want me to open Github? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
   open https://github.com/settings/ssh/new
fi


 