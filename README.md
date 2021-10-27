# GasolinePriceApp

1.全国のガソリンの価格を検索することができる
2.近場で最も安いガソリンスタンドを検索することができる
3.ガソリンの価格などの情報を自由に共有できる
4.各ガソリン別で、価格の安い場所を絞り込むことができる
5.カード支払い、現金支払いで検索することができる

# URL

https://gasoline-price-app.herokuapp.com/

# 利用方法

1.新規登録を行う
2.マップから検索を行う
3.場所を絞り込んで検索を行う
4.各ガソリンから絞り込んで検索を行う
5.各ガソリンメーカーから絞り込んで検索を行う
6.コメントを投稿できる

# 目指した課題解決

* 車を所有している人が対象
* マップ機能の導入
* 毎日スタンドごとに価格が変わっているのでどうやって各ガソリンスタンドの価格情報を取得するかが課題

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

