class Classroom < ApplicationRecord
    has_many :lessons, dependent: :destroy
    belongs_to :profile
    has_one_attached :picture
    has_one_attached :banner_image
end
