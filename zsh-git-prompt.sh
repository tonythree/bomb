echo "💣 Installs zsh-git-prompt in your terminal. Requires Brew. See details https://github.com/olivierverdier/zsh-git-prompt"
git clone https://github.com/olivierverdier/zsh-git-prompt.git ~/repo/zsh_plugins/zsh-git-prompt/
echo "" >> ~/.zshrc 
echo "# Created by zsh-git-prompt bomb 💣" >> ~/.zshrc
echo "source ~/repo/zsh_plugins/zsh-git-prompt/zshrc.sh" >> ~/.zshrc
echo "PROMPT='⚡️ %B%~%b \$(git_super_status) '" >> ~/.zshrc
exec zsh -l