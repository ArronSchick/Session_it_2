class Lesson < ApplicationRecord
    belongs_to :classroom
    has_one :booked
    has_one_attached :picture
end
