Lokka mixi Check
================

これは、[mixiチェック](http://developer.mixi.co.jp/connect/mixi_plugin/mixi_check/spec_mixi_check)を作成する[Lokka](http://lokka.org)用のプラグインです。

インストール
------------

    $ cd public/plugin
    $ git clone git://github.com/nkmrshn/lokka-mixi_check.git

使い方
------

管理画面の[プラグイン]->[Mixi Check]でオプションを設定することができます。

ヘルパーメソッドとして、「mixi_check」があります。テーマのテンプレートを変更することをお忘れずにお願いします。mixi_checkメソッドは、引数が与えられていない場合、表示しているページのURLを使用します。URLを指定したい場合は、文字列引数としてメソッドに指定してください。

    <%= mixi_check("http://example.com/foo/bar/") %>

注意点
--------

このプラグインをご使用になる前に、mixiの[Developer Dashboard](https://sap.mixi.jp/)でアプリを登録し、チェックキーを取得する必要があります。

また、タイトルや説明文を指定したい場合は、htmlタグに名前区間(xmlns)を挿入し、またheadタグ内にmetaタグを挿入してください。詳しくは、mixi Developer Centerの[技術仕様](http://developer.mixi.co.jp/connect/mixi_plugin/mixi_check/spec_mixi_check)をご覧ください。
