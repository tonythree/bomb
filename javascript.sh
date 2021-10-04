echo "💣 Uninstall Node + NPM"
npm uninstall npm -g
rm -rf /usr/local/lib/node /usr/local/lib/node_modules /var/db/receipts/org.nodejs.*
rm -rf /usr/local/include/node /Users/$USER/.npm
rm /usr/local/bin/node
rm /usr/local/share/man/man1/node.1
rm /usr/local/lib/dtrace/node.d
echo "💣 Install NVM (Node Version Manager)"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.30.2/install.sh | bash
source ~/.zshrc
nvm install stable
nvm use --delete-prefix stable
nvm alias default stable
npm install npm -g
echo node: $(node -v) npm: $(npm -v)
