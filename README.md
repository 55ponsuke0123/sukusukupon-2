# テーブル設計

##  users テーブル
| Column        | Type       | Options       |
| ------------- | ---------- | ------------- |
| email         | string     | null: false   |
| password      | string     | null: false   |
| child_name    | string     | null: false   |
| class         | string     | null: false   |
| childminder1  | string     | null: false   |
| childminder2  | string     |               |
| childminder3  | string     |               |

### Association
has_many :books

## books テーブル
| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| attendance   | integer    | null: false                    |
| absence      | integer    | null: false                    |
| user_id      | references | null: false, foreign_key: true |

### Association
belongs_to :user
has_one :attendance_details
has_one :absence_details


## attendance_details テーブル
| Column           | Type         | Options                        |
| ---------------- | ----------   | ------------------------------ |
| condition        | integer      | null: false                    |
| body_temperature | integer      | null: false                    |
| mood             | integer      | null: false                    |
| sleep            | integer      | null: false                    |
| comments         | text         |                                |


### Association
belongs_to :books

## absence_details テーブル
| Column           | Type         | Options                        |
| ---------------- | ----------   | ------------------------------ |
| reason           | integer      | null: false                    |
| disease_name     | text         |                                |
| comment          | text         |                                |

### Association
belongs_to :books