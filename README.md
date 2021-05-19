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
