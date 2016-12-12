# Elasticsearch向けのダミーデータ生成スクリプト

[Faker](https://github.com/stympy/faker) Gemを利用してElasticsearchのBulk APIでインポートできる形のダミーデータを生成します。

生成されるのは本のデータで以下のフィールドを持っています。

* title: タイトル
* author: 著者
* publisher: 出版社
* genre: ジャンル
* rating: 評価（1〜5）
* release_date: 発売日（12月10日から60日前までをランダムに生成）

## 利用方法

`bundler` で依存Gemのインストール

    $ bundle install

100個のドキュメントを生成

    $ ./generate_docs.rb 100

