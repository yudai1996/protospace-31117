# テーブル設計

## usersテーブル

| Colum      | Type   | Options     |
| ---------- | ------ | ----------- |
| email      | string | null: false |
| password   | string | null: false |
| name       | string | null: false |
| profile    | text   | null: false |
| occupation | text   | null: false |
| position   | text   | null: false |

### Association

- has_many :comments
- has_many :prototype


## prototypeテーブル

| Colum      | Type         | Options     |
| ---------- | ------------ | ----------- |
| title      | string       | null: false |
| catch_copy | text         | null: false |
| concept    | text         | null: false |
| image      |              |             |
| user       | references   |             |

### Association

-belong_to :users
-has_many  :comments


## commentsテーブル

| Colum      | Type         | Options     |
| ---------- | ------------ | ----------- |
| text       | text         | null: false |
| user       | reference    |             |
| prototype  | reference    |             |


### Association

-belong_to :users
-belong_to :prototype