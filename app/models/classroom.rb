class Classroom < ApplicationRecord
    has_many :reviews
    has_many :lessons
    belongs_to :profile
    has_one_attached :picture
    has_one_attached :banner_image
end
