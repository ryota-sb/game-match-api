# rails-env
Docker環境　Rails + MySQL
- Ruby 2.5
- Rails 5
- MySQL 5.7 

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
db作成
```bash
$ docker-compose exec app rails db:create
```
ビルドして起動
```bash
$ sudo docker-compose up -d --build
```
