echo "💣 Show hidden files"
defaults write com.apple.finder AppleShowAllFiles -boolean true; killall Finder 

# if you want to revert changes, do:
# defaults write com.apple.finder AppleShowAllFiles -boolean false; killall Finder 