class Lesson < ApplicationRecord
    belongs_to :classroom
    belongs_to :profile
    has_one_attached :picture
end
