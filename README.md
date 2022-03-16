# docker-delegate

## 概要

[DeleGate](https://ja.wikipedia.org/wiki/DeleGate)をコンテナにしたもの。

## 使い方

```shell
docker run -d --name delegate \
           -p 1080:80 \
           -e ADMIN=yourname@example.com \
           -e STLS=fsv
           pengo/delegate

open http://localhost:1080/-_-https://srad.jp/
```

環境変数`ADMIN`は必須。

## 注意

サーバを不用意に公開すると踏み台にされる可能性がある。
環境変数`DELEGATE_CREDENTIALS`を`user:pass`形式で設定するとBasic認証がかかる。
