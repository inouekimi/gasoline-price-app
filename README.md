# テーブル設計

## usersテーブル

| Column             | Type    | Options                   |
| ------------------ | ------- | ------------------------- |
| nickname           | string  | null: false               |
| fullname           | string  | null: false               |
| encrypted_password | string  | null: false               |
| email              | string  | null: false               |
| postal_code        | string  | null: false               |
| prefecture_code_id | integer | null: false               |
| city               | string  | null: false               |
| street             | string  | null: false               |
| other_address      | string  |                           |

### Association

- has_many :comments

## commentsテーブル

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| text         | text       | null:false                     |
| user         | references | null: false, foreign_key: true |

### Association

