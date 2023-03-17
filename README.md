# OkiDroLance-back
## 環境構築
commit treeを追う形で構築
### rails new
```
docker-compose up --build -d
```
を実行
```
docker images
```
で`okidrolance-api-okidro-api`があったらok

コンテナの中に入る
```
# docker-compose up --build -d okidro-api
docker-compose exec -it okidro-api  /bin/bash
```

```
rails new . --api --database=mysql --skip-yarn --skip-active-storagen--skip-javascript --skip-turbolinks --skip-test
```

### 初期gem追加
- faker
- pry
- rubocop
- rspec
- bullet
- annotate
`Gemfile`編集後、`bundle install`

### rubocop設定
`.rubocop.yml`を作成
```
rubocop --auto-gen-config
rubocop
```
 `no offenses`とでてたら成功

### git Actionsの設定
`config/database.yml`と`config/database.tml.ci`を編集

## テストデータ
```
rails db:seed
```
`db/seed.rb`を使ってテストデータ生成。
