class Lesson < ApplicationRecord
    belongs_to :classroom
    has_one :booked, dependent: :destroy
    has_one_attached :picture
end
