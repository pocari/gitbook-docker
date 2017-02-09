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

<img width="867" alt="2017-02-09 14 37 00" src="https://cloud.githubusercontent.com/assets/1496543/22770670/73cedc70-eed5-11e6-8eed-b581e0e53a77.png">

