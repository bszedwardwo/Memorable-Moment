# アプリケーション名
 Memorable-Moment

# アプリケーション概要
 ・画像を一つ一つコメント付きで、それをフォルダに保存できる
 ・フォルダに入れた画像をスライドショー形式で表示できる

# テスト用アカウント
 ・メールアドレス： a@a.com
 ・パスワード：aaa111

## ターゲット層
 20代、30代の男女に、特にカップルや、女性

## 目指した課題解決
画像をフォルダに入れて保存できるアプリは色々ありますが、画像一枚一枚にコメントをつけて、これいつのことだったかなぁみたいに使えるアプリがなかったので作りました。

昔取った写真をその時のコメント付きで保存できることによって、あとから見返したときにすぐにその時の情景を思い浮かべることができます。
それによって、久しぶりにあった友人等に共有して懐かしむことや、カップルや結婚後の人たちが昔話をするときにも効果を発揮することができます。

## 将来性

・スマホアプリ化し、もっと簡単に利用できるようにする。  
・他人に共有することができるようにする。  
・期間を選択し、ランダムにスライドショー形式に表示ができる。  

# 実装機能

・ユーザー登録機能  
・画像保存機能  
・フォルダ機能  
・お気に入り機能  
・タグ付け機能  
・コメント機能  
・検索機能  

# テーブル設計

## usersテーブル

| Column             | Type       | Options     |
| ------------------ | ---------- | ----------- |
| nickname           | string     | null: false |
| email              | string     | null: false |
| encrypted_password | string     | null: false |

### Assiciation
- has_many :photos
- has_many :folders
- has_many :comments

## photosテーブル

| Column   | Type       | Options                        |
| -------- | ---------- | ------------------------------ |
| image    | string     | null: false                    |
| text     | text       |                                |
| favorite | boolean    |                                |
| user     | references | null: false, foreign_key: true |

### Assiciation
- belongs_to :user
- has_many :photo_folders
- has_many :folders, through: :photo_folders
- has_many :tags, through: :photo_tags
- has_one :comment

## foldersテーブル

| Column   | Type       | Options                        |
| -------- | ---------- | ------------------------------ |
| name     | string     | null: false                    |
| favorite | boolean    |                                |
| user     | references | null: false, foreign_key: true |

### Assiciation
- belongs_to :user
- has_many :photo_folders
- has_many :photos, through: :photo_folders
- has_many :tags, through: :folder_tags

## tagsテーブル

| Column   | Type       | Options                        |
| -------- | ---------- | ------------------------------ |
| name     | string     | null: false                    |
| user     | references | null: false, foreign_key: true |

### Assiciation
- has_many :photos, through: :photo_tags
- has_many :folders, through: :folder_tags

## commentsテーブル

| Column   | Type       | Options                        |
| -------- | ---------- | ------------------------------ |
| content  | text       | null: false                    |
| user     | references | null: false, foreign_key: true |
| photo    | references | null: false, foreign_key: true |

### Assiciation
- belongs_to :user
- belongs_to :photo