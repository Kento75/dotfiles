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

```
{
    "workbench.startupEditor": "newUntitledFile",
    "editor.tabSize": 2,
    "explorer.confirmDragAndDrop": false,
    "workbench.iconTheme": "material-icon-theme",
    "editor.formatOnSave": false,
    "javascript.format.enable": false,
    "prettier.eslintIntegration": true,
    "cSpell.userWords": [
        "julienschmidt"
    ],
    "editor.formatOnPaste": false,
    "editor.formatOnType": false,
    "go.gopath": "/Users/kento/code/golang",   ← ここは、GOPATHを設定するので、適宜ユーザー名を変更する
    "go.formatOnSave": true
}
```
