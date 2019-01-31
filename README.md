# Yukiusagi
yukiusagiは管理画面用gemです。  
  
このgemを利用して
- viewのテンプレートを生成
- yukiusagiのCSSを適用  

することができます。

## インストール

Gemfileに以下を追加:

```ruby
gem 'yukiusagi'
```
そして:

    $ bundle
## 使い方
### CSSを適用する
`application.scss`など適用したいファイルに以下を追加
```
@import 'yukiusagi/yukiusagi';
```
### レイアウトファイルの作成
以下を参考に編集してください。  
[application.html.erbの編集例](https://github.com/eishis/yukiusagi/wiki/application.html.erb%E3%81%AE%E7%B7%A8%E9%9B%86%E4%BE%8B)
  
  bodyタグのクラスを変えることでスタイルを変更できます。

    <body class="yu-theme-default">（ピンク系：デフォルト）

    <body class="yu-theme-cool">（ブルー系）

### top, _header, _sidebarのhtml.erbファイルを生成
top.html.erb, _header.html.erb, _sidebar.html.erbをviews/以下の指定ディレクトリに生成:

    $ rails g yukiusagi:top { 指定ディレクトリ }

例）views/admin ディレクトリに生成したい時

    $ rails g yukiusagi:top admin

### index, show, editのhtml.erbファイルを生成
index.html.erb, show.html.erb, edit.html.erbをviews/以下の指定ディレクトリに生成:

    $ rails g yukiusagi:views { 指定ディレクトリ }

例）views/admin/users ディレクトリに生成したい時

    $ rails g yukiusagi:top admin/users

## Contributing
バグの報告やプルリクエストは GitHub https://github.com/eishis/yukiusagi までお願いします。

## License

このgemは[MITライセンス](https://opensource.org/licenses/MIT)のもとでオープンソースとして配布されています。
