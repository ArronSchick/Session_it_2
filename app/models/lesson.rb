class Lesson < ApplicationRecord
    belongs_to :classroom
    belongs_to :booked
    has_one_attached :picture
end
