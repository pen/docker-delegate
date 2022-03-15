# docker-delegate

## 概要

[DeleGate](https://ja.wikipedia.org/wiki/DeleGate)をコンテナにしたもの。

## 使い方

サンプルの設定ファイルをコピーし、必要なら編集する。

```shell
cp sample.docker-compose.yml docker-compose.yml
cp sample.env .env
```

コンテナを動かし、経由してWebサイトにアクセスしてみる。

```shell
docker-compose up -d
open http://localhost:1080/-_-https://srad.jp/
```

## 注意

不用意に公開delegateを作ると踏み台になる可能性がある。
rc.entryを利用する場合は環境変数`DELEGATE_CREDENTIALS`を`user:pass`形式で設定するとBasic認証がかかる。
