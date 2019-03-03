# dotfiles

### セットアップ

```
# homeに設定ファイルをダウンロード
cd ~
git clone https://github.com/Kento75/dotfiles.git
cd ./dotfiles
# セットアップshellを実行
bash bootstrap.sh
```


### 移行メモ

```
# = 現在の設定があるPCでの操作
# 共有用フォルダ(今回の例では~/dotfiles/vscode)に今の設定ファイルを置く

mkdir -p ~/dotfiles/ ~/dotfiles/vscode
cd ~/Library/Application\ Support/Code/User/
mv ./settings.json ~/dotfiles/vscode/settings.json
mv ./keybindings.json ~/dotfiles/vscode/keybindings.json
ln -s ~/dotfiles/vscode/settings.json ./settings.json
ln -s ~/dotfiles/vscode/keybindings.json ./keybindings.json
```
