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
# vscode/settings.json
{
    "workbench.startupEditor": "newUntitledFile",
    "explorer.confirmDragAndDrop": false,
    "workbench.iconTheme": "material-icon-theme",
    "window.title": "${activeEditorLong}",
    "editor.formatOnSave": true,
    "javascript.format.enable": false,
    "eslint.enable": true,
    "eslint.nodePath": "/usr/local/var/nodebrew/node/v10.15.2/bin/eslint",  ← ここは、グローバルにインストールしたESLintのパスを指定
    "eslint.autoFixOnSave": true,
    "eslint.options": {
        "parserOptions": {
            "ecmaVersion": 6,
            "sourceType": "module",
            "ecmaFeatures": {
                "jsx": true
            }
        },
        "rules": {
            "quotes": [
                2,
                "single"
            ],
            "linebreak-style": [
                2,
                "unix"
            ],
            "semi": [
                2,
                "always"
            ],
            "no-console": 0
        }
    },
    // Controls the rendering size of tabs in characters. Accepted values: "auto", 2, 4, 6, etc. If set to "auto", the value will be guessed when a file is opened.
    "editor.tabSize": 2,
    // Controls if the editor will insert spaces for tabs. Accepted values:  "auto", true, false. If set to "auto", the value will be guessed when a file is opened.
    "editor.insertSpaces": true,
    // Controls whether the editor should render whitespace characters
    "editor.renderWhitespace": "all",
    "window.zoomLevel": 0,
    "prettier.eslintIntegration": true,
    "cSpell.userWords": [
        "julienschmidt"
    ],
    "editor.formatOnPaste": true,
    "editor.formatOnType": false,
    "go.gopath": "/Users/kento/code/golang",  ← ここは、GOPATHを設定するので、適宜ユーザー名を変更する
    "go.formatOnSave": true,
    "[go]": {
        "editor.tabSize": 4
    },
    "explorer.confirmDelete": false
}
```
