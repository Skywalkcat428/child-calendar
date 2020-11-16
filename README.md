# テーブル設計

## users テーブル

| Column      | Type   | Options     |
| ----------- | ------ | ----------- |
| email       | string | null: false |
| password    | string | null: false |
| name        | string | null: false |

### Association

- has_many   :calendars

- has_many   :chat_users
- has_many   :chats, through: chat_users
- has_many   :messages

- has_many   :events


## calendars テーブル

| Column       | Type       | Options                        |
| --------- -- | ---------- | ------------------------------ |
| child_name   | string     | null: false                    |
| birth_date   | date       | null: false                    |
| sex          | string     | null: false                    |
| blood_type   | string     | null: false                    |
| user         | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :calendar

- has_many   :events

--------------------------------------------------------------

## fullcalendar (JS)

| Column       | Type   | Options     |
| ------------ | ------ | ----------- |
| year         | string | null: false |
| month        | string | null: false |
| day          | string | null: false |
| time         | date   | null: false |
| event_id     | string | null: false |

### Association

- has_many :events
- belongs_to :user

## (events テーブル)

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| text          | string     | null: false                    |
| user_id       | string     | null: false                    |
| calendar      | references | null: false, foreign_key: true |

### Association

- belongs_to :calendar
- belongs_to :user

--------------------------------------------------------------

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


## memos テーブル

| Column  | Type       | Options     |
| ------- | ---------- | ----------- |
| text    | string     | null: false |
| user_id | string     | null: false |

### Association

- belongs_to :user