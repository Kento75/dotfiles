# dotfiles

[![Build Status](https://img.shields.io/endpoint.svg?url=https%3A%2F%2Factions-badge.atrox.dev%2FKento75%2Fdotfiles%2Fbadge%3Fref%3Dmaster&style=flat)](https://actions-badge.atrox.dev/Kento75/dotfiles/goto)

### 色々インストール

```
bash install.sh
```

### VScode セットアップ

#### 前提条件

・Homebrew インストール済み

```
# homeに設定ファイルをダウンロード
cd ~
git clone https://github.com/Kento75/dotfiles.git
cd ./dotfiles
# VScodeセットアップshellを実行
bash editor-setup.sh
```

### VScode 移行メモ

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
    "window.zoomLevel": 0,
    "cSpell.userWords": [
        "julienschmidt"
    ],
    "launch": {
        "version": "0.2.0",
        "configurations": [{
            "name": "Chrome",
            "type": "chrome",
            "request": "launch",
            "url": "http://localhost:3000",
            "webRoot": "${workspaceFolder}/src",
            "sourceMapPathOverrides": {
                "webpack:///src/*": "${webRoot}/*"
            }
        }]
    },
    // Controls the rendering size of tabs in characters. Accepted values: "auto", 2, 4, 6, etc. If set to "auto", the value will be guessed when a file is opened.
    "editor.tabSize": 2,
    // Controls if the editor will insert spaces for tabs. Accepted values:  "auto", true, false. If set to "auto", the value will be guessed when a file is opened.
    "editor.insertSpaces": true,
    // Controls whether the editor should render whitespace characters
    "editor.renderWhitespace": "all",
    "editor.formatOnSave": true,
    "editor.formatOnPaste": true,
    "editor.formatOnType": false,
    "javascript.format.enable": false,
    "javascript.validate.enable": false,
    "eslint.enable": true,
    "eslint.nodePath": "/usr/local/var/nodebrew/node/v10.15.2/bin/eslint",  ← ここは、グローバルにインストールしたESLintのパスを指定
    "eslint.autoFixOnSave": true,
    "eslint.options": {
        "env": {
            "browser": true,
            "commonjs": true,
            "es6": true,
            "node": true
        },
        "extends": "eslint:recommended",
        "parserOptions": {
            "ecmaVersion": 6,
            "sourceType": "module",
            "ecmaFeatures": {
                "jsx": true,
                "js": true
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
    "prettier.eslintIntegration": true,
    "vetur.format.defaultFormatter.html": "js-beautify-html",
    "vetur.format.defaultFormatterOptions": {
        "js-beautify-html": {
            "wrap_attributes": "auto"
        }
    },
    "vetur.format.defaultFormatter.ts": "vscode-typescript",
    "go.gopath": "/Users/kento/code/golang",  ← ここは、GOPATHを設定するので、適宜ユーザー名を変更する
    "go.formatOnSave": true,
    "[go]": {
        "editor.tabSize": 4
    },
    "phpcs.standard": "PSR2",
    "explorer.confirmDelete": false
}
```
