# rails-env
Docker環境　Rails + MySQL
- Ruby 2.5
- Rails 5
- MySQL 5.7 

## M1 Macの場合
docker-compose.ymlに追記
```bash
db:
  platform: linux/x86_64
```

## 初期設定
プロジェクト作成
```bash
$ docker-compose run app rails new . --force --api --database=mysql -T
$ sudo chown -R ${ユーザー名}:${グループ名} ${プロジェクトファイルまでのフルPath}
```
database.ymlの設定変更(config/database.yml)
```bash
password: password
host: db
```
ビルドして起動
```bash
$ sudo docker-compose up -d --build
```
再起動
```bash
$ docker-compose down
$ docker-compose up -d
```
db作成
```bash
$ docker-compose exec app rails db:create
```
