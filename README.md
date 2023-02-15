# OkiDroLance-back
## 環境構築
commit:e357508122aa083aecf6bc8eb6b6c8e8b9516176 の状態の時に
```
docker-compose up --build
```
を実行
`docker images`で`okidrolance-api-okidro-api`があったらok

コンテナの中に入る
'''
docker-compose up --build -d okidro-api
docker-compose exec -it okidro-api  /bin/bash
'''

'''
rails new . --api --database=mysql --skip-yarn --skip-active-storagen--skip-javascript --skip-turbolinks --skip-test
'''

初期gem追加
- faker
- pry
- rubocop
- rspec
- bullet
- annotate
`Gemfile`編集後、`bundle install`


