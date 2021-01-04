class House < ApplicationRecord
    has_many(
        :people,
        class_name: 'House',
        foreign_key: :people_id,
        primary_key: :id
    )
end