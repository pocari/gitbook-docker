# Gitbook

## build

```
docker build -t gitbook-docker .
```

## run

```
docker run -it -v $(pwd):/var/gitbook -p4000:4000 gitbook-docker bash
```

## sample

コンテナ内で下記を実行
```
# sampleブックプロジェクトに移動
cd sample-book

# sampleのブックをビルド
gitbook build

# sampleのブックをサーブ
gitbook serve
```

この後ブラウザから http://localhost:4000 にアクセス
