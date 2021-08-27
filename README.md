# アプリケーション名
dagashiya-yokotyo-app（駄菓子屋横丁）

# アプリケーション概要
駄菓子に纏わる思い出を交流する

# URL
https://dagashiya-yokotyo-app.herokuapp.com/

# テスト用アカウント


# 利用方法


# 目指した課題解決
ターゲット：駄菓子に親しんだ大人世代
課題：駄菓子屋の減少に伴い、駄菓子を食す人口も減少している
解決：駄菓子に纏わる思い出を記録することで、駄菓子の魅力が再発見され再興につながる

# 洗い出した要件
1. ユーザー管理機能
2. 商品投稿機能
3. 思い出投稿機能
4. (コメント機能)
5. (ランキング機能)

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/9bf518d8afa2bbc6c2d743a8fb02741e.png)](https://gyazo.com/9bf518d8afa2bbc6c2d743a8fb02741e)

# テーブル設計

## usersテーブル

| Column             | Type    | Options                  |
| ------------------ | ------- | ------------------------ |
| nickname           | string  | null:false               |
| email              | string  | null:false, unique: true |
| encrypted_password | string  | null:false               |
| age_id             | integer | null:false               |

### Association
has_many :memories
has_many :products


## productsテーブル

| Column           | Type    | Options    |
| ---------------- | ------- | ---------- |
| product_name     | string  | null:false | 
| description      | text    | null:false |
| company_id       | integer | null:false |
| category_id      | integer | null:false |
| flavour_id       | integer | null:false |
| package_type_id  | integer | null:false |
| unicent_price_id | integer | null:false |

### Association


## memoriesテーブル

| Column     | Type   | Options    |
| ---------- | ------ | ---------- |
| title      | string | null:false |
| memory     | text   | null:false |
| created_on | date   | null:false |

### Association
belongs_to :user
