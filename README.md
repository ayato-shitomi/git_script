# Git自動Pushスクリプト

Gitに自動でPushするための、Shellスクリプトです。

## 内容

以下の操作を自動でします。

```bash
git add .
git commit -m "メッセージ on 日付"
git push
```

## セットアップ

以下コマンドを実行してください。

```bash
git clone git@github.com:ayato-shitomi/git_script.git
cd git_script
chmod 777 setup.sh && ./setup.sh
```

`.bashrc`もしくは`.zshrc`に以下の行を追加してください。

```.bashrc
alias autopush='~/.git_script/push.sh'
```

## 使い方

存在するGitリポジトリにて、以下コマンドでPushできます。
コミットメッセージは`メッセージ on DATE`の形式でPushされます。

```bash
autopush メッセージ
```

コミットメッセージを入力してない場合や複数の引数がある場合には中断されます。