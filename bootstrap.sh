#!bin/sh -ex

cd ~/Library/Application\ Support/Code/User/
unlink ./settings.json
ln -s ~/dotfiles/vscode/settings.json ./settings.json
unlink ./keybindings.json
ln -s ~/dotfiles/vscode/keybindings.json ./keybindings.json
mkdir snippets
unlink ./snippets/Snippets.txt
ln -s ~/dotfiles/vscode/Snippets.txt ./snippets/Snippets.txt

cat ~/dotfiles/vscode/extensions | while read line
do
  code --install-extension $line
done
