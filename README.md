

# テーブル設計

## users テーブル
| Column         | Type   | Options     |
| --------       | ------ | ----------- |
| team           | string | null: false |
| email          | string | null: false |
| password       | string | null: false |
| profile        | text   | null: false |
| performance     | text   | null: false |


## posts テーブル

| Column             | Type      | Options           |
| ------             | ------    | -----------       |
| user               | references| foreign_key: true |
| place              | text      | null: false       |
| recruitment_team_id| integer   | null:false        |
| sports_id          | integer   | null: false       |
| average_age_id     | integer   | null: false       |
| gender_id          | integer   | null:false        |

## comment テーブル

| Column             | Type      | Options           |
| ------             | ------    | -----------       |
| user               | references| foreign_key: true |
| post               | references| foreign_key: true |
| text               | text      | null:false        |
