# README

# テーブル設計

## users テーブル

| Column     | Type   | Options     |
| --------   | ------ | ----------- |
| name       | string | null: false |
| email      | string | null: false |
| password   | string | null: false |
| profile    | text   | null: false |
| occupation | text   | null: false |
| position   | text   | null: false |

### Association

- has_many :spot
- has_many :comments

## spot テーブル

| Column     | Type      | Options                        |
| ------     | ------    | ---------------------------    |
| name       | string    | null: false                    |
| add        | text      | null: false                    |
| note       | text      | null: false                    |
| user       | reference | null: false, foreign_key: true |
### Association

- belongs_to :users
- has_many :comments

## comments テーブル

| Column      | Type       | Options                        |
| ------      | ---------- | ------------------------------ |
| user        | references | null: false, foreign_key: true |
| spot        | references | null: false, foreign_key: true |
| text        | text       | null: false                    | 

### Association

- belongs_to :spot
- belongs_to :user




