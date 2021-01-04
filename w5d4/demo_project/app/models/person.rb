class Person < ApplicationRecord
    belongs_to(
        :house,
        class_name: 'Person',
        foreign_key: :professor_id,
        primary_key: :id,
        optional: true
    )
end