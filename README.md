テーブル設計

## usersテーブル

| column             | type   | option               |
| ------------------ | ------ | -------------------- |
| email              | string | NOT NULL,ユニーク制約 |
| encrypted_password | string | NOT NULL             |
| name               | string | NOT NULL             |
| profile            | text   | NOT NULL             |
| occupation         | text   | NOT NULL             |
| position           | text   | NOT NULL             |

has_many :prototypesテーブル
has_many :commentsテーブル

## prototypesテーブル

| column     | type       | option           |
| ---------- | ---------- | -----------------|
| title      | string     | NOT NULL         |
| catch_copy | text       | NOT NULL         |
| concept    | text       | NOT NULL         |
| user       | references | NOT NULL,外部キー |

has_many :commentsテーブル
belongs_to :usersテーブル

## commentsテーブル

| column    | type       | option           |
| --------- | ---------- | ---------------- |
| content   | text       | NOT NULL         |
| prototype | references | NOT NULL,外部キー |
| user      | references | NOT NULL,外部キー |

belongs_to :usersテーブル
belongs_to :prototypesテーブル