# README

## アプリケーション名
Buskers Paradise
(路上パフォーマーの為の予約と情報共有アプリ)



## アプリケーション概要　
パフォーマー情報を始めとして
パフォーマンス可能な場所と予定内容を登録し一覧表示します

Ruby, Ruby on railsを使用し、場所の情報とパフォーマーの情報を登録し、トップページへ表示出来るように実装しました。


# URL
https://buskers-app4.herokuapp.com/



# スクリーンショット

・トップページ
![インデックス](https://user-images.githubusercontent.com/76483672/128087975-127b219d-e2b1-44fd-a1f9-9c6a4b2737b5.jpeg)


・登録された場所の詳細
<img width="855" alt="コメントページ" src="https://user-images.githubusercontent.com/76483672/128088873-9c26e354-fd26-437d-ace4-73bc729fb95f.png">

・予約コメント
<img width="856" alt="コメント２" src="https://user-images.githubusercontent.com/76483672/128088853-2a337e16-62ff-458a-875e-6734f7a8d802.png">

・登録者情報ページ
![個人情報](https://user-images.githubusercontent.com/76483672/128089134-64b2540e-5718-49de-91ff-d8dc164d2917.jpeg)


## 利用方法
新規ユーザー登録後、右上にPost busking spot　ボタンが出現するので、クリックすると登録画面へ移動します。
登録が完了すると、トップページに一覧として登録された内容が表示されます。

写真をクリックすることで、その場所の詳細とコメント入力欄が使えます。

## 注意事項
Hereokuの特性上、投稿された画像は１日で消去されます。
いずれは別のサーバーにて管理する予定ですが、現時点では以上の様な仕様になっておりますので、ご了承下さい。


## 目指した課題解決
バスカー（路上パフォーマー）同士はあまり場所に関しての横の繋がりがなく、当日現場に行ったらバッティングしてしまう事が多々ありました。
そういった事を無くす為に、場所の情報共有及び、演奏時間の共有を行うことで、無駄なバッティングを無くす事が出来ると思い、作成しました。

##　今後の実装予定機能

１.APIで検索機能付きGoogle Mapをindexと詳細ページに設置
２．登録された住所をクリックすると、その場所がMapに自動で表示される様にする


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


## ER図

<img width="662" alt="ER" src="https://user-images.githubusercontent.com/76483672/128090844-b994a46d-00c6-49dd-85bd-1910b557dae6.png">

## ローカルでの起動方法
事前に用意していただく起動環境　MacOS - Ruby 2.6.5 - Ruby on Rails 6.0.0 - JavaScript - SQL - Git - GitHub 


ターミナル操作

```ターミナル

% cd buskers_app4

```

```ターミナル

% bundle install

```

```ターミナル

% brew install nodejs

```

```ターミナル

% brew install yarn

```

```ターミナル

% rails db:create

```

```ターミナル

% rails db:migrate

```

```ターミナル

% rails s

```

以上

