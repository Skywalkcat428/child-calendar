# テーブル設計

## users テーブル

| Column          | Type   | Options     |
| --------------- | ------ | ----------- |
| email           | string | null: false |
| password        | string | null: false |
| nickname        | string | null: false |
| birth_date      | date   | null: false |
| sex             | string | null: false |

### Association

- belongs_to :calendars
- has_many   :schedules
- has_many   :chat_users
- has_many   :chats, through: chat_users
- has_many   :messages
- has_many   :memos


## calendars テーブル

| Column          | Type   | Options     |
| --------------- | ------ | ----------- |
| year            | string | null: false |
| month           | string | null: false |
| day             | string | null: false |
| time            | date   | null: false |
| schedule_id     | string | null: false |

### Association

- has_many :schedules
- belongs_to :user


## schedules テーブル

| Column          | Type   | Options     |
| --------------- | ------ | ----------- |
| text            | string | null: false |
| user_id         | string | null: false |

### Association

- belongs_to :calendar
- belongs_to :user


## chats テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| room   | string | null: false |

### Association

- has_many :chat_users
- has_many :users, through: chat_users
- has_many :messages


## room_users テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| chat   | references | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user


## messages テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | string     |                                |
| user    | references | null: false, foreign_key: true |
| chat    | references | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user
ssss

## memos テーブル

| Column  | Type       | Options     |
| ------- | ---------- | ----------- |
| text    | string     | null: false |
| user_id | string     | null: false |

### Association

- belongs_to :user