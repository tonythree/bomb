#!/bin/bash
echo "💣 Git init"
echo "💣 Enter your email"
read EMAIL
ssh-keygen -t ed25519 -C "$EMAIL"
eval "$(ssh-agent -s)"
touch ~/.ssh/config
echo "Host *
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_ed25519" >> ~/.ssh/config
ssh-add --apple-use-keychain ~/.ssh/id_ed25519
pbcopy < ~/.ssh/id_ed25519.pub
echo "💣 I copied the public key in your clipboard. You need to create a new Redirecting to Github"
read -p "Do you want me to open Github? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
   open https://github.com/settings/ssh/new
fi


 
