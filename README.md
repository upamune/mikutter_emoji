## これなに
SlackとかGithubで使えるような ```:emoji:``` 形式の書式をサポートします。投稿時にこれが含まれていると自動的に変換されます。

![](https://raw.githubusercontent.com/jajkeqos/mikutter_emoji/gh-pages/img/demo.gif)

使える絵文字一覧 => [EMOJI CHEAT SHEET](http://www.emoji-cheat-sheet.com/)

## 依存関係
gem gemoji

## インストール
```
gem install gemoji
mkdir -p ~/.mikutter/plugin
cd ~/.mikutter/plugin
git clone git@github.com:jajkeqos/mikutter_emoji.git mikutter_emoji
```

## ToDo
- □タイムラインに現れる絵文字を置換する
- ☑投稿する際に絵文字に置換する
- ☑複数絵文字が含まれていても置換できるようにする
