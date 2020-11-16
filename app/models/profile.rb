class Profile < ApplicationRecord
    belongs_to :user
    has_one :classroom
    has_many :reviews
    has_many :lessons
    has_one_attached :picture
    has_one_attached :banner_image
end
