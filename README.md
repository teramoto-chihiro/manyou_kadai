## テーブルスキーマ

### Taskモデル
| カラム名 | データ型 | 備考 |
| ------ | ------ | ------ |
| id | bigint | タスクID |
| user_id(FK) | bigint | ユーザーID |
| label_id(FK) | bigint | ラベルID |
| title | string | タスク名 |
| content | text | 内容 |
| dedline | datetime | 終了期限 |
| status | integer | ステータス |
| priority | integer | 優先順位 |

### Userモデル
| カラム名 | データ型 | 備考 |
| ------ | ------ | ------ |
| id | bigint | ユーザーID |
| name | string | ユーザー名 |
| email | text | メールアドレス |
| password | string | パスワード |

### Labelモデル
| カラム名 | データ型 | 備考 |
| ------ | ------ | ------ |
| id | bigint | ラベルID |
| label_name | string | ラベル名 |

## Herokuへのデプロイ手順
(Vagrant環境)
### 1.Herokuにログイン
```ruby
$ heroku login -i
```
### 2.Herokuに新しいアプリケーションを作成
```ruby
$ heroku create
```
### 3.Heroku stackを変更
```ruby
$ heroku stack:set heroku-18
```
**※バージョン確認する場合**
```ruby
$ heroku stack
```
### 4.Heroku buildpackを追加
```ruby
$ heroku buildpacks:set heroku/ruby
$ heroku buildpacks:add --index 1 heroku/nodejs
```
### 5.アセットプリコンパイルを実行
```ruby
$ rails assets:precompile RAILS_ENV=production
```
### 6.git add、git commit
```ruby
$ git add -A
$ git commit -m "commit message"
```
### 7.Herokuにデプロイ
```ruby
$ git push heroku master
```
**ブランチを指定してHeroku masterへプッシュする場合**
```ruby
$ git push heroku branchname:master
```
### マイグレーション
```ruby
$ heroku run rails db:migrate
```
### Herokuサーバー再起動
```ruby
$ heroku restart
```
