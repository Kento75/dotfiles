#!bin/sh -ex

cd ~/Library/Application\ Support/Code/User/
rm settings.json
ln -s ~/dotfiles/vscode/settings.json ./settings.json
rm keybindings.json
ln -s ~/dotfiles/vscode/keybindings.json ./keybindings.json
ln -s ~/dotfiles/vscode/Snippets.txt ./snippets/Snippets.txt

cat ~/dotfiles/vscode/extensions | while read line
do
  code --install-extension $line
done

