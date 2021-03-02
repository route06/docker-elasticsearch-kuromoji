## ビルド・プッシュの仕方

### docker login

personal access tokenが ./token に置いてある場合

```
$ cat ./token | docker login ghcr.io -u [GitHubのユーザ名] --password-stdin
```

### docker build && docker push


arm64, amd64を同時にpushするとき

```
$ docker buildx build --platform linux/amd64,linux/arm64 -t ghcr.io/route06/elasticsearch-kuromoji:7.9.0 --push .
```


利用中のarchだけpushするとき

```
$ docker build -t ghcr.io/route06/elasticsearch-kuromoji:7.9.0 .
$ docker push ghcr.io/route06/elasticsearch-kuromoji:7.9.0
```
