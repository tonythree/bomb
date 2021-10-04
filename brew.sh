#!/bin/bash
echo "💣 Brew install"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo "💣 Adding brew to your zprofile"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
echo "💣 Activating brew for the current console session"
eval "$(/opt/homebrew/bin/brew shellenv)"