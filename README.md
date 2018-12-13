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
`application.cscc`など適用したいファイルに以下を追加
```
@import 'yukiusagi/yukiusagi';
```
### テンプレートファイルを生成
テンプレートファイルをview以下の指定ディレクトリに生成:

    $ rails g yukiusagi:views { 指定ディレクトリ }

例）views/admin ディレクトリに生成したい時

    $ rails g yukiusagi:views admin

## Contributing
バグの報告やプルリクエストは GitHub https://github.com/eishis/yukiusagi までお願いします。

## License

このgemは[MITライセンス](https://opensource.org/licenses/MIT)のもとでオープンソースとして配布されています。
